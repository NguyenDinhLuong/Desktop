//
//  CellViewController.swift
//  Product5
//
//  Created by Admin on 15/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class CellViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var searchTextfield: DesignableTextField!
    
    @IBOutlet weak var myTable: UITableView!
    
    var mang: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     myTable.dataSource = self
        mang = ["Ahmedabad","Bangalore","Bhubaneswar","Chandigarh","Chennai","Delhi","Goa","Hydrabad","Indore"]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return mang.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        cell?.textLabel?.text = mang[indexPath.row]
        return cell!
        
    }
    
    @IBAction func searchButton(_ sender: Any) {
        let search = searchTextfield.text
        if search == mang[0] {
          self.performSegue(withIdentifier: "View4", sender: self)
        }
    }
    
}
    


