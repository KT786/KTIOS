//
//  ViewController.swift
//  Gesture
//
//  Created by Rp on 23/10/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lbl : UILabel!
    @IBOutlet var lblTwo : UILabel!
    @IBOutlet var img : UIImageView!
    @IBOutlet var imgTwo : UIImageView!


    var lastLocation:CGPoint = CGPoint.init(x: 0, y: 0)
    var lastTransform : CGAffineTransform!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(taponlbl))
        tapGesture.numberOfTapsRequired = 2
        lbl.addGestureRecognizer(tapGesture)
        
        
        let longPressGesture = UILongPressGestureRecognizer.init(target: self, action: #selector(self.longpress))
        longPressGesture.minimumPressDuration = 2
        lblTwo.addGestureRecognizer(longPressGesture)
        
        let panGesture = UIPanGestureRecognizer.init(target: self, action: #selector(self.tapOnPan(gesture:)))
        img.addGestureRecognizer(panGesture)
        
        let pinchGesture = UIPinchGestureRecognizer.init(target: self, action: #selector(self.pinchGesture(gesture:)))
        
        imgTwo.addGestureRecognizer(pinchGesture)
    }
    
    @objc func pinchGesture(gesture:UIPinchGestureRecognizer)
    {
        imgTwo.transform = imgTwo.transform.scaledBy(x: gesture.scale, y: gesture.scale)
    }
    
    @objc func tapOnPan(gesture:UIPanGestureRecognizer)
    {
        let point = gesture.translation(in: self.view)
        
        img.center = CGPoint.init(x: point.x + lastLocation.x, y: point.y + lastLocation.y)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
       // lastLocation = img.center
        
        lastTransform = imgTwo.transform
    }
    
    @objc func taponlbl()
    {
        print("tap...")
    }
    
    @objc func longpress()
    {
        print("aaaa")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

