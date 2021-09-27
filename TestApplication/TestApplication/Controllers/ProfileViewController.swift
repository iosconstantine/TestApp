//
//  ProfileViewController.swift
//  TestApplication
//
//  Created by KONSTANTIN TISHCHENKO on 27.09.2021.
//

import UIKit
import KeychainAccess

final class ProfileViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBAction func logOutAction(_ sender: UIButton) {
        try! Session.shared.keychain.removeAll()
        let story = UIStoryboard(name: "Main", bundle:nil)
        let mainVC = story.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        UIApplication.shared.windows.first?.rootViewController = mainVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = Session.shared.userName!
    }
}

