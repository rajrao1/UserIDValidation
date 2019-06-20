//
//  LoginViewModel.swift
//  UserIDValidation
//
//  Created by Developer on 14/06/19.
//  Copyright © 2019 Developer. All rights reserved.
//

import Foundation

class LoginViewModel {
    
    let userInfo:UserInfo?
    var isUserIdValid = false
    
    init() {
        userInfo = UserInfo(userId: nil)
    }
    
    func validateUserId(loginID:String?) -> Bool {
        
        // Get the current text from the TextField
        if let strID = loginID  {
            
            // Get the initial 3 characters
            // Try to convert them to the Int
            let prefixDigitsOpt:Int? = Int(String(strID.prefix(3))) // firstText is UITextField
            
            if prefixDigitsOpt != nil {
                isUserIdValid = true
            }
            else {
                isUserIdValid = false
            }
        } else {
            isUserIdValid = false
        }
        
        return isUserIdValid
    }
}
