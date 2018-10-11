//
//  RegisterViewController.swift
//  Product4
//
//  Created by Admin on 11/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var phoneTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    func isValidPhone(phone: String) -> Bool {
        let PHONE_REGEX = "^((\\+)|(00))[0-9]{9,15}$";                                                    let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        return  phoneTest.evaluate(with: phone)
    }
        
        func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        
    }
    @IBAction func registerTextfield(_ sender: Any) {
       let email1 = emailTextfield.text
       let phone1 = phoneTextfield.text
       let password1 = passwordTextfield.text
    if email1!.isEmpty || phone1!.isEmpty || password1!.isEmpty {
        let alertMessage = "All fields are required."
        let alertController = UIAlertController(title:"Invalid", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        
        return
        
        }
        let email = isValidEmail(email: emailTextfield.text!)
        let password = isValidPassword(password : passwordTextfield.text!)
        let phone = isValidPhone(phone: phoneTextfield.text!)
        if email == false || password == false || phone == false {
            showAlert(title: "ERROR", message:" Register is unsuccessful! Please try again.")
            emailTextfield.text = ""
        } else {
           showAlert(title: "Valid", message: "Register is successful!")
       
        }
        UserDefaults.standard.set(password1, forKey:"password1")
        UserDefaults.standard.set(email1,forKey:"email1" )
        UserDefaults.standard.set(phone1,forKey:"phone1" )
        
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        self.performSegue(withIdentifier: "View1", sender: self )
    }
    
}
        
    

    

    

