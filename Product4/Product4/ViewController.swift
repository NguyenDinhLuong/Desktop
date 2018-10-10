//
//  ViewController.swift
//  Product4
//
//  Created by Admin on 10/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func logInview2(_ sender: Any) {
        self.performSegue(withIdentifier: "View2", sender: self)
    }
    
}

