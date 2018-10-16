//
//  RegisterViewController.swift
//  Product5
//
//  Created by Admin on 15/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var repeatTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "View1", sender: self)
    }
    
    @IBAction func registerButton(_ sender: Any) {
        let email = emailTextfield.text
        let password = passwordTextfield.text
        let repeatpassword = repeatTextfield.text
        if email!.isEmpty || password!.isEmpty || repeatpassword!.isEmpty {
           showAlert(title: "Invalid", message:"All fields are require!")
        }
        let email1 = isValidEmail(email: emailTextfield.text!)
        let password1 = isValidPassword(password : passwordTextfield.text!)
        if email1 == false || password1 == false || password != repeatpassword {
            showAlert(title: "ERROR", message:" Register is unsuccessful! Please try again.")
            emailTextfield.text = ""
        } else {
            showAlert(title: "Valid", message: "Register is successful!")
            
        }
        UserDefaults.standard.set(password, forKey:"password")
        UserDefaults.standard.set(email, forKey:"email")
        
    }
    func isValidEmail(email:String?) -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
    func isValidPassword(password:String?) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[0-9]).{6,6}")
        return passwordTest.evaluate(with: password)
    }
    
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    
}
}
