//
//  ViewController.swift
//  collection view ex2
//
//  Created by INDIA on 26/08/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    let array1 = [ #imageLiteral(resourceName: "iphone 6"),#imageLiteral(resourceName: "iphone 7"),#imageLiteral(resourceName: "iphone x"),#imageLiteral(resourceName: "iphone 5s"),#imageLiteral(resourceName: "samsung j6"),#imageLiteral(resourceName: "smsung s8"),#imageLiteral(resourceName: "samsung note8")]
    let array2 = [ "iphone 7","iphone 6","iphone x","iphone 5s","samsung j6","samsung galaxy s8","samsung note 8"]
    let array3 = ["ios 10","ios 9","ios 8","ios7","Tizen OS","Tizen OS","Tizen OS"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
            return array1.count
        }else if
           section == 1{
            return array2.count
        }else{
            return array3.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "abc", for: indexPath)
        let lbl = cell.contentView.viewWithTag(1111) as! UILabel
        let img = cell.contentView.viewWithTag(1010) as! UIImageView
        let lbl2 = cell.contentView.viewWithTag(1110) as! UILabel
        if indexPath.section == 0{
            img.image = array1[indexPath.row]
            lbl.text = array2[indexPath.row]
            lbl.frame = CGRect.init(x: 1, y: 184, width: 134, height: 44)
            lbl.font = UIFont.boldSystemFont(ofSize: 25)
            lbl.sizeToFit()
            lbl2.text = array3[indexPath.row]
            
        }
        return cell
    }
    
   
    
    
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
}



