//
//  RegistrationViewController.swift
//  Login
//
//  Created by Arpik Sargsyan on 10/2/18.
//  Copyright © 2018 Arpik Sargsyan. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backToLogin() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        navigationController?.setViewControllers([vc, self], animated: false)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func submitAction(_ sender: Any) {
        if !usernameField.text!.isEmpty &&
            !emailField.text!.isEmpty &&
            !passwordField.text!.isEmpty &&
            !confirmPasswordField.text!.isEmpty {
            if passwordField.text == confirmPasswordField.text {
                Registration.username = usernameField.text!
                Registration.email = emailField.text!
                Registration.password = passwordField.text!
                
                backToLogin()
            } else {
                presentAlert(firstTitle: "Something wrong!",
                             secondTitle: "Ok",
                             message: "Password didn't match!")
            }
        } else {
            presentAlert(firstTitle: "Error!",
                         secondTitle: "Ok",
                         message: "Please fill in all fields")
        }
    }
    
    @IBAction func backgroudTapAction(_ sender: UITapGestureRecognizer) {
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
}
