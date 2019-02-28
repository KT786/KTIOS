//
//  ViewController.swift
//  tblview array
//
//  Created by INDIA on 22/08/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let lbl = cell.contentView.viewWithTag(1001) as! UILabel
        if indexPath.section == 0{
            lbl.text = array[indexPath.row]
        }
        else if
            indexPath.section == 1{
            lbl.text = array2[indexPath.row]
        }else{
            lbl.text = array3[indexPath.row]
        }
        
        return cell
        
    }
    
    
    
   
   
    

    let array = ["abc","mno","pqr"]
    let array2 = ["a","b","c","d"]
    let array3 = ["P","q","r","s"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
        return array.count
        };if section == 1{
            return array2.count
            
        }else{
           return array3.count
        }
    
    
        
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

