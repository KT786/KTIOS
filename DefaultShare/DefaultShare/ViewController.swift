//
//  ViewController.swift
//  DefaultShare
//
//  Created by INDIA on 13/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clickOnBtn(){
        
        let array = [#imageLiteral(resourceName: "apple2")]
        
        let activitycontroller = UIActivityViewController.init(activityItems: array, applicationActivities: nil)
        activitycontroller.excludedActivityTypes = [.mail,.airDrop,.markupAsPDF,.message]
        
        self.present(activitycontroller, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

