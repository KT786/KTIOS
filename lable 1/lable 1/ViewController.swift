//
//  ViewController.swift
//  lable 1
//
//  Created by INDIA on 10/07/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lbl : UILabel!
    @IBOutlet var lblone : UILabel!
    @IBOutlet var lbl2 : UILabel!
    @IBOutlet var lbl3 : UILabel!
    
    let lbl4 = UILabel()
    let lblSecound = UILabel()
    let lbl5 = UILabel()
    let lbl6 = UILabel()
    let lbl7 = UILabel()
    let lbl8 = UILabel()
    let lbl9 = UILabel()
    let lbl10 = UILabel()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        lbl.frame = CGRect.init(x: 20, y: 35, width: 250, height: 50)
        lbl.text = "January asxhasikx dxgsidxg bdguqsvdcx vdxucdvx qdivxv"
        lbl.backgroundColor = UIColor.blue
        lbl.font = UIFont.systemFont(ofSize: 25)
        lbl.textColor = UIColor.brown
    
        lblone.frame = CGRect.init(x: 31, y: 89, width: 250, height: 35)
        lblone.font = UIFont.systemFont(ofSize: 25)
        lblone.text = "Fabruary"
        lblone.backgroundColor = UIColor.blue
        lblone.textColor = UIColor.brown
        
        lbl2.text = "March"
        lbl2.font = UIFont.systemFont(ofSize: 25)
        lbl2.textColor = UIColor.brown
        lbl2.backgroundColor = UIColor.blue
        lbl2.frame = CGRect.init(x: 32, y: 144, width: 250, height: 35)
        
        lbl3.text = "April"
        lbl3.textColor = UIColor.brown
        lbl3.backgroundColor = UIColor.blue
        lbl3.frame = CGRect.init(x: 32, y: 200, width: 250, height: 35)
        lbl3.font = UIFont.boldSystemFont(ofSize: 25)
        
        lbl4.text = "May"
        lbl4.textColor = UIColor.brown
        lbl4.backgroundColor = UIColor.blue
        lbl4.frame = CGRect.init(x: 33, y: 256, width: 250, height: 35)
        lbl4.font = UIFont.boldSystemFont(ofSize: 25)
        view.addSubview(lbl4)
        
    
        lblSecound.text = "June"
        lblSecound.font = UIFont.boldSystemFont(ofSize: 25)
        lblSecound.backgroundColor = UIColor.blue
        lblSecound.textColor = UIColor.brown
        lblSecound.frame = CGRect.init(x: 32, y: 311, width: 250, height: 35)
        view.addSubview(lblSecound)
        
        lbl5.text = "july"
        lbl5.backgroundColor = UIColor.darkGray
        lbl5.textColor = UIColor.blue
        lbl5.font = UIFont.boldSystemFont(ofSize: 25)
        lbl5.frame = CGRect.init(x: 32, y: 366, width: 250, height: 35)
        lbl5.textAlignment = .center
        view.addSubview(lbl5)
        
        lbl6.text = "Auguest"
        lbl6.textColor = UIColor.blue
        lbl6.backgroundColor = UIColor.darkGray
        lbl6.frame = CGRect.init(x: 32, y: 421, width: 250, height: 35)
        lbl6.font = UIFont.boldSystemFont(ofSize: 25)
        lbl6.textAlignment = .center
        view.addSubview(lbl6)
        
        
        lbl7.text = "Saptember"
        lbl7.textColor = UIColor.blue
        lbl7.backgroundColor = UIColor.darkGray
        lbl7.font = UIFont.boldSystemFont(ofSize: 25)
        lbl7.frame = CGRect.init(x: 32, y: 476, width: 250, height: 35)
        lbl7.textAlignment = .center
        view.addSubview(lbl7)
        
        lbl8.text = "asbdkjasb sdjkbaskjbcd sacdbxkasbc sadjbxajksbdcx sabcdasbc cbkasbc"
        lbl8.textColor = UIColor.blue
        lbl8.backgroundColor = UIColor.darkGray
        lbl8.font = UIFont.boldSystemFont(ofSize: 25)
        lbl8.frame = CGRect.init(x: 32, y: 500, width: 250, height: 35)
        lbl8.textAlignment = .center
        lbl8.numberOfLines = 0
        lbl8.sizeToFit()
        view.addSubview(lbl8)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

