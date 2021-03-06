//
//  SecondViewController.swift
//  Login
//
//  Created by Arpik Sargsyan on 10/1/18.
//  Copyright © 2018 Arpik Sargsyan. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {
    
    @IBOutlet weak var userWelcome: UILabel!
    
    @IBAction func logoutAction() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        UserDefaults.standard.removeObject(forKey: "isLoggedIn")
        navigationController?.setViewControllers([vc, self], animated: false)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = Registration.username
        navigationController?.isNavigationBarHidden = true
        userWelcome.text = "Welcome \(user)!"
    }
}
