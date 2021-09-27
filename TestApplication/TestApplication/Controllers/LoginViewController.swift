//
//  LoginViewController.swift
//  TestApplication
//
//  Created by KONSTANTIN TISHCHENKO on 27.09.2021.
//

import UIKit
import KeychainAccess

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    private let keychain = Session.shared.keychain
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let login = loginField.text, let password = passwordField.text, !login.isEmpty, !password.isEmpty {
            
            keychain[login] = password
            Session.shared.userName = login
            Session.shared.password = password
            
            return true
        } else {
            return false
        }
    }
}
