//
//  ViewController.swift
//  timmer ex1
//
//  Created by INDIA on 15/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
   
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    
    
    
    var timmer : Timer!
    var secc = 60
    
    var timer : Timer!
    var sec = 0
    
    var ttime : Timer!
    var ssec = 60
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(seclecttimer), userInfo: nil, repeats: true)
        
        timmer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timmerontime), userInfo: nil, repeats: true)
        
        ttime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(cityonsurat), userInfo: nil, repeats: true)
        
    }
    
    
 @objc func seclecttimer(){
    
    sec = sec + 1
    let str = NSString.init(format: "%d", sec)
    
    if str.length > 1{
        let str1 = str.substring(to: 1)
        let str2 = str.substring(from: 1)
        
        lbl1.text = str1
        lbl2.text = str2
    }else{
        lbl1.text = "0"
        lbl2.text = str as! String
    }
    if sec == 60{
        timer.invalidate()
    }
    
    }

    
    
    
    
    @objc func timmerontime(){
        
        secc = secc - 1
         let strr = NSString.init(format: "%d", secc)
        
        if strr.length > 1{
            let strr1 = strr.substring(to: 1)
            let strr2 = strr.substring(from: 1)
            
            lbl4.text = strr1
            lbl3.text = strr2
            
        }else{
            lbl4.text = "0"
            lbl3.text = strr as!String
            
        }
        if secc == 0{
            timmer.invalidate()
        }
        
        
    }
    
    
    
    @objc func cityonsurat(){
        
        
        ssec = secc - 1
        
        let sstr = NSString.init(format: "%d", ssec)
        
        if sstr.length > 1{
            
            let sstr1 = sstr.substring(to: 1)
            let sstr2 = sstr.substring(from: 1)
            
            lbl5.text = sstr1
            lbl6.text = sstr2
            
        }else{
            
            lbl5.text = "0"
            lbl6.text = sstr as! String
        }
        
        if ssec == 0{
            ttime.invalidate()
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

