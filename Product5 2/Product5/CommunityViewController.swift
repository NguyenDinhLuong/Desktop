//
//  CommunityViewController.swift
//  Product5
//
//  Created by Admin on 16/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class CommunityViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var mang: [String] = ["2","3","1","4"]
    var mang1 : [String] = ["grayStar","grayHeart","forward-arrow"]
    var mang2 :[String] = ["Luong day","Minh day","Hoang day","Linh day"]
    @IBAction func backButton(_ sender: Any) {
        self.performSegue(withIdentifier: "back1", sender: self)
    }
    
    
    @IBOutlet weak var searchTextfield: DesignableTextField!
    
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return mang.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! View6TableViewCell
        cell.imgHinh.image = UIImage(named: mang[indexPath.row])
        cell.hinh1.image = UIImage(named: mang1[0])
        cell.hinh2.image = UIImage(named: mang1[1])
        cell.hinh3.image = UIImage(named: mang1[2])
        cell.label.text = mang2[indexPath.row]
        return cell
    }
    
    @IBAction func clickButton(_ sender: Any) {
        let search = searchTextfield.text
        if search == mang2[0] {
           self.performSegue(withIdentifier: "Hinhanh", sender: self)
        } else {
            let alertMessage = "we do not have this data! "
            let alertController = UIAlertController(title:"Sorry", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
            return
        }
    }
}

