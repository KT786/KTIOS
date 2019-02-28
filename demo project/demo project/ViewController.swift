//
//  ViewController.swift
//  demo project
//
//  Created by INDIA on 20/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var array = ["Home","Events","Press releases","Gallary","Videos","Speeches","Our leaders","Social media","Join us","About us"]
    
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
    let lbl = cell?.contentView.viewWithTag(1100) as! UILabel
        lbl.text = array[indexPath.row]
        lbl.font = UIFont.systemFont(ofSize: 25)
        lbl.sizeToFit()
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

