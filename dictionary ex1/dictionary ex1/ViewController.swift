//
//  ViewController.swift
//  dictionary ex1
//
//  Created by INDIA on 26/09/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let dic = ["city:surat","state:gujrat"]
  //  let dictionary = NSMutableDictionary()
    
  let array = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       // print(dic)
     //   dictionary.setValuesForKeys(["surat":"city","gujrat":"state"])
      //  dictionary.setValue("india", forKey: "country")
     //   dictionary.removeObject(forKey: "surat")
       // dictionary.removeObjects(forKeys: ["surat","gujrat"])
       // dictionary.removeAllObjects()
        
        
   //     print(dictionary)
        
        
        
        array.addObjects(from: ["SURAT","gujrat","india"])
     array.removeObject(at: 1)
        print(array)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

