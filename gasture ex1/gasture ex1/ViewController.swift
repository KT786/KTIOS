//
//  ViewController.swift
//  gasture ex1
//
//  Created by INDIA on 30/09/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var lbl : UILabel!
    @IBOutlet var lbl1 : UILabel!
    @IBOutlet var img : UIImageView!
    @IBOutlet var lbl3 : UILabel!
    
    
     var lastloacation:CGPoint = CGPoint.init(x: 0, y: 0)
     var lasttransform : CGAffineTransform!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapon = UITapGestureRecognizer.init(target: self, action: #selector(taponlbl))
        tapon.numberOfTapsRequired = 2
        lbl.addGestureRecognizer(tapon)
        
        let longpress = UILongPressGestureRecognizer.init(target: self, action: #selector(longpresslbl1))
        longpress.minimumPressDuration = 2
        lbl1.addGestureRecognizer(longpress)
        
        let tappan = UIPanGestureRecognizer.init(target: self, action: #selector(taponpan(gasture:)))
        img.addGestureRecognizer(tappan)
        
        
      //  let tappin = UIPinchGestureRecognizer.init(target: self, action: #selector(taponpin(gasture:)))
       // lbl3.addGestureRecognizer(tappin)
        
    }
    
    @objc func taponlbl()
    {
        print("tap...")
    }
    
    @objc func longpresslbl1()
    {
        print("Longpress...")
    }
    
    @objc func taponpan(gasture:UIPanGestureRecognizer)
    {
        let point = gasture.translation(in: self.view)
       // img.center = CGPoint.init(x: point.x + lastloacation.x, y: point.y + lastLocation.y)    }
    
   // @objc func taponpin(gasture:UIPinchGestureRecognizer)
   // {
        
   // }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 


}

