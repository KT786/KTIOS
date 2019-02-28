//
//  ViewController.swift
//  forloop ex1
//
//  Created by INDIA on 24/09/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     var i = 1
        
        for index in 1..<10
     {
    print(index)
        if index%2==0{
            print("even")
        }else{
            print("odd")
        }
        i = i+10
        print(i)
        
        
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

