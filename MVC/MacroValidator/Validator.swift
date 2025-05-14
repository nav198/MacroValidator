//
//  Validator.swift
//  MacroValidator
//
//  Created by Beera Naveen on 14/05/25.
//

import Foundation

public struct Validator {
  public static func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
   public static func sayHello() -> String {
        return "Hello World!"
    }
}
