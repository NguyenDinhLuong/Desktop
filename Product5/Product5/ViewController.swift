//
//  ViewController.swift
//  Product5
//
//  Created by Admin on 15/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var userTextfield: UITextField!
    
    
    @IBOutlet weak var passTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func clickButton(_ sender: Any) {
       self.performSegue(withIdentifier: "View2", sender: self )
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let email = userTextfield.text
        let password = passTextfield.text
        let storedEmail = UserDefaults.standard.string(forKey: "email")
        let storedPassword = UserDefaults.standard.string(forKey: "password")
        if email == storedEmail && password == storedPassword {
            self.performSegue(withIdentifier: "View3", sender: self)
        } else {
            let alertMessage = "Login is unsuccessful!"
            let alertController = UIAlertController(title:"Invalid", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
            return
            
        }
    }
    
}
    

    


