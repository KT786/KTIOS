//
//  homeViewController.swift
//  sidemenu ex1
//
//  Created by INDIA on 29/09/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let btn = UIBarButtonItem.init(title: "Left", style: .plain, target: self, action: #selector(clickonleft))
        self.navigationItem.leftBarButtonItem = btn
        
        
    }
    
    @objc func clickonleft(){
        
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
