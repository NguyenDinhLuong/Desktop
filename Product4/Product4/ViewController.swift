//
//  ViewController.swift
//  Product4
//
//  Created by Admin on 10/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    
    @IBOutlet weak var passwordTextfield: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    @IBAction func signupAction(_ sender: Any) {
        self.performSegue(withIdentifier: "View2", sender: self)
    }
    
    @IBAction func signInbutton(_ sender: Any) {
        let email = emailTextfield.text
        let password = passwordTextfield.text
        let storedEmail = UserDefaults.standard.string(forKey: "email1")
        let storedPassword = UserDefaults.standard.string(forKey: "password1")
        if email == storedEmail && password == storedPassword {
           self.performSegue(withIdentifier: "Controller", sender: self)
        } else {
            let alertMessage = "Login is unsuccessful!"
            let alertController = UIAlertController(title:"Invalid", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
            return
            
        }
        }
        
    }
    

    
    



