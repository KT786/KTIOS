//
//  LeftSideViewController.swift
//  DemoProject1
//
//  Created by Rp on 14/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class LeftSideViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    var array = ["Home","Events","Press release","Gallery","Video","Speeches","Our leaders","Social media","Join us","About us"]
    
    var imgarray = [#imageLiteral(resourceName: "home"),#imageLiteral(resourceName: "event_1024"),#imageLiteral(resourceName: "press_1024"),#imageLiteral(resourceName: "gallery_1024"),#imageLiteral(resourceName: "videos_1024"),#imageLiteral(resourceName: "speeches_1024"),#imageLiteral(resourceName: "leader_1024"),#imageLiteral(resourceName: "social_1024"),#imageLiteral(resourceName: "jion_us_1024"),#imageLiteral(resourceName: "about_us_1024")]
    
   // let arr = [["title":"Home","image":#imageLiteral(resourceName: "home")],["title":"Events","image":#imageLiteral(resourceName: "event_1024")]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.isTranslucent = false
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let lbl = cell.contentView.viewWithTag(2001) as! UILabel
        let imgview = cell.contentView.viewWithTag(1001) as! UIImageView
        
      //  let objcet = arr[indexPath.row]
      //  lbl.text = objcet["title"] as! String
      //  imgview.image = objcet["image"] as! UIImage
        
        lbl.text = array[indexPath.row]
        imgview.image = imgarray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        let controller = delegate.window?.rootViewController as! LGSideMenuController
        
        let nav = controller.rootViewController as! UINavigationController
        
        if indexPath.row == 0{
            let home = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController")as! MainViewController
            nav.viewControllers = [home]
        }
        else if indexPath.row == 1 {
            let event = self.storyboard?.instantiateViewController(withIdentifier: "EventScreenVC")as! EventScreenVC
            nav.viewControllers = [event]
        }
        else if indexPath.row == 2{
            let press = self.storyboard?.instantiateViewController(withIdentifier: "PressScreenVC")as! PressScreenVC
            nav.viewControllers = [press]
        }
        else if indexPath.row == 3{
            let gallery = self.storyboard?.instantiateViewController(withIdentifier: "GalleryScreenVC")as! GalleryScreenVC
            nav.viewControllers = [gallery]
        }
        else if indexPath.row == 4{
            let video = self.storyboard?.instantiateViewController(withIdentifier: "VideoScreenVC")as! VideoScreenVC
            nav.viewControllers = [video]
        }
        else if indexPath.row == 5{
            let speech = self.storyboard?.instantiateViewController(withIdentifier: "SpeechScreenVC")as! SpeechScreenVC
            nav.viewControllers = [speech]
        }
        else if indexPath.row == 6{
            let leader = self.storyboard?.instantiateViewController(withIdentifier: "LeaderScreenVC")as! LeaderScreenVC
            nav.viewControllers = [leader]
        }
        else if indexPath.row == 7{
            let social = self.storyboard?.instantiateViewController(withIdentifier: "SocialScreenVC")as! SocialScreenVC
            nav.viewControllers = [social]
        }
        else if indexPath.row == 8{
            let join = self.storyboard?.instantiateViewController(withIdentifier: "JoinScreenVC")as! JoinScreenVC
            nav.viewControllers = [join]
        }
        else{
            let about = self.storyboard?.instantiateViewController(withIdentifier: "AboutScreenVC")as! AboutScreenVC
            nav.viewControllers = [about]
        }
        self.sideMenuController?.hideLeftView(animated: true, completionHandler: nil)
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
