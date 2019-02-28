//
//  HomeViewController.swift
//  sidemenu
//
//  Created by Rp on 20/10/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
      //  let rightbarbutton = UIBarButtonItem.init(image: #imageLiteral(resourceName: "bb"), style: .plain, target: self, action: #selector(self.clickonRight))
        let rightbarbutton = UIBarButtonItem.init(title: "Left", style: .plain, target: self, action: #selector(self.clickonRight))
        self.navigationItem.leftBarButtonItem = rightbarbutton
    }
    
    @objc func clickonRight(){
        
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
