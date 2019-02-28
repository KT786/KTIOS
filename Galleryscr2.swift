//
//  Galleryscr2.swift
//  DemoProject1
//
//  Created by Rp on 16/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class Galleryscr2: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var collectionview : UICollectionView!

    var arrayImg = NSArray()
    var selectedIndex : NSInteger!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(selectedIndex)
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let indexPath  = NSIndexPath.init(item: selectedIndex, section: 0)
        collectionview.scrollToItem(at: indexPath as IndexPath, at: .right, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
    }
  
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imgview = cell.contentView.viewWithTag(2001)as! UIImageView
        let dict = self.arrayImg.object(at: indexPath.row) as! NSDictionary
        let imgstr = dict.value(forKey: "photo" as! String)
        imgview.sd_setImage(with: URL.init(string: imgstr as! String), completed: nil)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize.init(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        
        return size
    }
    
   
    @objc func clickOn(){
        self.sideMenuController?.showLeftView(animated: true, completionHandler: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
