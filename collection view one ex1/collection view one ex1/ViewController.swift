//
//  ViewController.swift
//  collection view one ex1
//
//  Created by INDIA on 29/08/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    let arrayimg = [#imageLiteral(resourceName: "abc"),#imageLiteral(resourceName: "bc"),#imageLiteral(resourceName: "cd"),#imageLiteral(resourceName: "ef"),#imageLiteral(resourceName: "jk"),#imageLiteral(resourceName: "mp"),#imageLiteral(resourceName: "po"),#imageLiteral(resourceName: "ui")]
//    let array1 = ["","","",""]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
    
          return  arrayimg.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "abc", for: indexPath)
        let imageview = cell.contentView.viewWithTag(1010) as! UIImageView
        imageview.image = arrayimg[indexPath.row]
     //   imageview.frame = CGRect.init(x: 5, y: 10, width: 102, height: 118)
       // let lbl = cell.contentView.viewWithTag(1110) as! UILabel
       // lbl.text = array1[indexPath.row]
      //  lbl.backgroundColor = UIColor.red
     //   lbl.frame = CGRect.init(x: 50, y: 25, width: 100, height: 100)
        
        return cell
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
   
        
        let size = CGSize.init(width: (UIScreen.main.bounds.size.width-40)/3, height: (UIScreen.main.bounds.size.width-40)/3)
        
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

