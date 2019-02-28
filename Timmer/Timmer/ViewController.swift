//
//  ViewController.swift
//  Timmer
//
//  Created by INDIA on 14/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer : Timer!
    
    var secound = 60

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        lbl1.layer.borderWidth = 5
        lbl2.layer.borderWidth = 5
        
        lbl1.layer.borderColor = UIColor.black.cgColor
        lbl2.layer.borderColor = UIColor.black.cgColor
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setupTime), userInfo: nil, repeats: true)
        
    }
    
    @objc func setupTime(){
        
        secound = secound - 1
        
        let str = NSString.init(format: "%d", secound)
        
        if str.length > 1
        {
            let str1 = str.substring(to: 1)
            let str2 = str.substring(from: 1)
            
            lbl1.text = str1
            lbl2.text = str2
        }else{
            lbl1.text = "0"
            lbl2.text = str as! String
        }
        
        if secound == 0{
            timer.invalidate()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

