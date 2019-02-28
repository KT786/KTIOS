//
//  ViewController.swift
//  defaltshare ex1
//
//  Created by INDIA on 14/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func clickonbtn(){
        
        let array = [#imageLiteral(resourceName: "aaaa")]
        
        let share = UIActivityViewController.init(activityItems: array, applicationActivities: nil)
        share.excludedActivityTypes = [.airDrop,.assignToContact,.copyToPasteboard,.mail]
        
        self.present(share, animated: true, completion: nil)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

