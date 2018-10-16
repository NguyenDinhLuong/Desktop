//
//  View6TableViewCell.swift
//  Product5
//
//  Created by Admin on 17/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class View6TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgHinh: UIImageView!
    
    
    @IBOutlet weak var hinh1: UIImageView!
    
    @IBOutlet weak var hinh2: UIImageView!
    
    @IBOutlet weak var hinh3: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
