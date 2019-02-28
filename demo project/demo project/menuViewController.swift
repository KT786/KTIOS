//
//  menuViewController.swift
//  demo project
//
//  Created by INDIA on 20/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class menuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let leftbtn = UIBarButtonItem.init(title: "MEnu", style: .plain, target: self, action: #selector(clcikonbtn))
        
        self.navigationItem.leftBarButtonItem = leftbtn
        
        
    }

    @objc func clcikonbtn(){
        
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
