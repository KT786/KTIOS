//
//  GalleryScreenVC.swift
//  DemoProject1
//
//  Created by Rp on 14/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class GalleryScreenVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var collectionview : UICollectionView!

    var array = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let leftbarbtn = UIBarButtonItem.init(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(clickOn))
        self.navigationItem.leftBarButtonItem = leftbarbtn
        
        SVProgressHUD.show()
        self.getmenu()
    }
    
    func getmenu(){
        
        let str = "http://kaptantest.info/osama/yasmin/thailand_party2/public/api/photos"
        
        let url = URL.init(string: str)
        
        let request = NSMutableURLRequest.init(url: url as! URL)
        request.httpMethod = "Get"
        
        let configuration = URLSessionConfiguration.default
        
        let sesssion = URLSession.init(configuration: configuration)
        
        let task =  sesssion.dataTask(with: request as URLRequest, completionHandler: {(data,response, error) -> Void in
            SVProgressHUD.dismiss()
            do{
                let dic = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves)as! NSDictionary
                print(dic)
                
                DispatchQueue.main.async {
                    self.array = dic.object(forKey: "data")as! NSArray
                    self.collectionview.reloadData()
                }
            }catch{
                
            }

        })
        task.resume()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imgview = cell.contentView.viewWithTag(2001)as! UIImageView
        let dict = self.array.object(at: indexPath.row) as! NSDictionary
        let imgstr = dict.value(forKey: "photo")
        imgview.sd_setImage(with: URL.init(string: imgstr as! String), completed: nil)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (UIScreen.main.bounds.size.width-40)/3
        
        let size = CGSize.init(width: width, height:width)
        
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let galleryVC = self.storyboard?.instantiateViewController(withIdentifier: "Galleryscr2")as! Galleryscr2
        galleryVC.arrayImg = array
        galleryVC.selectedIndex = indexPath.item
        self.navigationController?.pushViewController(galleryVC, animated: true)
        
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
