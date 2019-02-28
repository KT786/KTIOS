//
//  ViewController.swift
//  gasture ex.1
//
//  Created by INDIA on 01/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var lbl : UILabel!
    @IBOutlet var lbl1 : UILabel!
    @IBOutlet var image1 : UIImageView!
    @IBOutlet weak var ravi: UIImageView!
    
 //   @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var lab: UILabel!
    
    
  //  var lastlocation:CGPoint = CGPoint.init(x: 0, y: 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let Taponclcik = UITapGestureRecognizer.init(target: self, action: #selector(clickontap))
        Taponclcik.numberOfTapsRequired = 2
        lbl.addGestureRecognizer(Taponclcik)
        
        
        let longpress = UILongPressGestureRecognizer.init(target: self, action: #selector(pressonlong))
        longpress.minimumPressDuration = 5
        lbl1.addGestureRecognizer(longpress)
        
        let tappan = UIPanGestureRecognizer.init(target: self, action: #selector(taponpangesture(Gesture:)))
        image1.addGestureRecognizer(tappan)
        
        let tapon = UITapGestureRecognizer.init(target: self, action: #selector(self.doubaltap))
        lab.addGestureRecognizer(tapon)
        
        
    }
    
    
    @objc func clickontap()
    {
       print("welcomwe")
    }
    
    @objc func pressonlong()
    {
        print("Thanks for visit")
    }
    
    @objc func taponpangesture(Gesture:UIPanGestureRecognizer)
    {
        let point = Gesture.translation(in: self.view)
      //  image1.center = CGPoint.init(x: point.x + lastlocation.x, y: point.y + lastlocation.y)
           image1.center = CGPoint.init(x: point.x, y: point.y)
    }
    
    @objc func doubaltap()
    {
        if lab.image == UIImage(named: "aaaa"){
            lab.image = UIImage(named: "bbbb")
        }else
        {
          lab.image = UIImage(named: "aaaa")
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

