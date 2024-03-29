//
//  ViewController.swift
//  UserIDValidation
//
//  Created by Developer on 14/06/19.
//  Copyright © 2019 Developer. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var idTexField: UITextField!
    @IBOutlet weak var userIdSyntaxIssueLabel: UILabel!

    let loginVM = LoginViewModel()

    override func viewDidLoad() {
        //Super class setup
        super.viewDidLoad()
        
        // UI updates
        userIdSyntaxIssueLabel.text = NSLocalizedString(LocalizedString.LoginView.LoginIdFormatInvalid, comment: "")
        
        
        //  UI Changes Identify
        idTexField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        _ = loginVM.validateUserId(loginID: textField.text)
        self.updateInfomationLabel()
    }
    
    func updateInfomationLabel() {
        
        if (loginVM.isUserIdValid) {
            self.userIdSyntaxIssueLabel.text = NSLocalizedString(LocalizedString.LoginView.LoginIdFormatValid, comment: "")
            self.userIdSyntaxIssueLabel.isHidden = true;
        } else {
            self.userIdSyntaxIssueLabel.text = NSLocalizedString(LocalizedString.LoginView.LoginIdFormatInvalid, comment: "")
            self.userIdSyntaxIssueLabel.isHidden = false;
        }
    }

}
