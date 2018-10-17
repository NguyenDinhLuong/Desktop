//
//  DesignableTextField.swift
//  Product5
//
//  Created by Admin on 15/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit
@IBDesignable

class DesignableTextField: UITextField {

    @IBInspectable var rightImage: UIImage? {
       didSet{
        updateView()
    }
    }
    func updateView() {
      if let image =  rightImage {
         rightViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.image = image
        rightView = imageView
        } else {
           rightViewMode = .never
        }
    }

}
