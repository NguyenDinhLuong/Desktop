//
//  MainViewController.swift
//  Product4
//
//  Created by Admin on 10/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    @IBOutlet weak var userEmail: UITextField!
    
    @IBOutlet weak var userPhone: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerTextfield(_ sender: Any) {
        let userEmail = self.userEmail.text
        let userPhone = self.userPhone.text
        let userPassword = self.userPassword.text
        if userEmail!.isEmpty || userPhone!.isEmpty || userPassword!.isEmpty {
            let alertMessage = "Register is unsucessful."
            let alertController = UIAlertController(title:"Empty Information", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
            return
        }
        
        
        }
        }
        
        
    
        
        
        
    
    }
    
    
}
