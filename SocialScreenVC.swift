//
//  SocialScreenVC.swift
//  DemoProject1
//
//  Created by Rp on 14/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class SocialScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let leftbarbtn = UIBarButtonItem.init(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(clickOn))
        self.navigationItem.leftBarButtonItem = leftbarbtn
    }

    @IBAction func clickOnFb(){
    
        UIApplication.shared.open(URL.init(string: "https://www.facebook.com/thaipeoplepowerpartypage")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func clickOnTwitter(){
        
        UIApplication.shared.open(URL.init(string: "https://twitter.com/0xREjn0OHxcFkQg")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func clickOnInsta(){
        
        UIApplication.shared.open(URL.init(string: "http://instagram.com/_u/thaipeoplepowerparty")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func clickOnYoutube(){
        
        UIApplication.shared.open(URL.init(string: "https://www.youtube.com/channel/UC-Mz1RS-96VrxZv_N7mYzEw")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func clickOnLine(){
        
        UIApplication.shared.open(URL.init(string: "Postponed")!, options: [:], completionHandler: nil)
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
