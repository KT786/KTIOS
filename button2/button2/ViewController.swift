//
//  ViewController.swift
//  button2
//
//  Created by INDIA on 11/07/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var btn : UIButton!
    @IBOutlet var btn1 : UIButton!
    @IBOutlet var btn3n : UIButton!
    
    let btn4 = UIButton()
    let btn5 = UIButton()
    
    





    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btn.setTitle("Download", for: .normal)
        btn.setTitleColor(UIColor.orange, for: .normal)
        btn.backgroundColor = UIColor.lightGray
        btn.frame = CGRect.init(x: 35, y: 55, width: 250, height: 35)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        
        
        
       
    
        btn1.setTitle("Next", for: .normal)
        btn1.setTitleColor(UIColor.black, for: .normal)
        btn1.frame = CGRect.init(x: 35, y: 120, width: 250, height: 35)
        btn1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        btn1.backgroundColor = UIColor.lightGray
        
        btn3n.setTitle("Back next oh lets go Congratulation bypass oprators", for: .normal)
        btn3n.setTitleColor(UIColor.black, for: .normal)
        btn3n.backgroundColor = UIColor.lightGray
        btn3n.frame = CGRect.init(x: 35, y: 195, width: 250, height: 35)
        btn3n.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        btn3n.sizeToFit()
        
        
        btn4.setTitle("loging", for: .normal)
        btn4.setTitleColor(UIColor.black, for: .normal)
        btn4.backgroundColor = UIColor.lightGray
        btn4.frame = CGRect.init(x: 35, y: 255, width: 250, height: 35)
        btn4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        view.addSubview(btn4)
        
        btn5.setTitle("forget password", for: .normal)
        btn5.setTitleColor(UIColor.black, for: .normal)
        btn5.backgroundColor = UIColor.lightGray
        btn5.frame = CGRect.init(x: 35, y: 330, width: 250, height: 35)
        btn5.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        view.addSubview(btn5)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

