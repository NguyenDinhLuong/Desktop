//
//  CollectionViewController.swift
//  Product5
//
//  Created by Admin on 16/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collection: UICollectionView!
    
    @IBOutlet weak var searchTextfield: UITextField!
    
    var mang: [String] = ["ICON","Housing","jobs","personals","money","discussion"]
    var mang1: [String] = ["Community","Housing","Jobs","Personals","For Sale","Discussion Forum"]
    var mang2: [String] = ["14 items","8 items","12 items","8 items","22 items","11 items"]
    override func viewDidLoad() {
        super.viewDidLoad()
       collection.dataSource = self
       collection.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mang.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath) as!View5CollectionViewCell
        cell.imgHinh.image = UIImage(named: mang[indexPath.row])
        cell.label1.text = mang1[indexPath.row]
        cell.label2.text = mang2[indexPath.row]
        return cell
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        self.performSegue(withIdentifier: "back", sender: self)
    }
    
    
    @IBAction func clickButton(_ sender: Any) {
        let search = searchTextfield.text
        if search == mang1[0] {
       self.performSegue(withIdentifier: "Community", sender: self)
    } else {
            let alertMessage = "Data is not availble! We are updating."
            let alertController = UIAlertController(title:"Sorry", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
            return
        
        }
}
}

    




