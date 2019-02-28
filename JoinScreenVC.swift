//
//  JoinScreenVC.swift
//  DemoProject1
//
//  Created by Rp on 14/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class JoinScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let leftbarbrn = UIBarButtonItem.init(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(clickOn))
        self.navigationItem.leftBarButtonItem = leftbarbrn
    }

    @IBAction func clickOnMember(){
        
        var strObject = "http://register.พลังปวงชนไทย.com".addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        
        
        
       // UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        
        let webview = self.storyboard?.instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
        webview.str = strObject
        self.navigationController?.pushViewController(webview, animated: true)
    }
    
    @IBAction func clickOnSupporter(){
        
        var strObject = "http://kaptantest.info/osama/thailand_party/requestForm"
        
      //  UIApplication.shared.open(URL.init(string: "http://kaptantest.info/osama/thailand_party/requestForm")!, options: [:], completionHandler: nil)
   
        let webview = self.storyboard?.instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
        webview.str = strObject
        self.navigationController?.pushViewController(webview, animated: true)
        
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
