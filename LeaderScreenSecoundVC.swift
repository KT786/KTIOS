//
//  LeaderScreenSecoundVC.swift
//  DemoProject1
//
//  Created by Rp on 16/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class LeaderScreenSecoundVC: UIViewController {
    
    @IBOutlet var lbl : UILabel!
    @IBOutlet var lblSecound : UILabel!
    @IBOutlet var lblThird : UILabel!
    @IBOutlet var imgview : UIImageView!

    var dictSecound = NSDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lbl.text = dictSecound.value(forKey: "name") as? String
        lbl.textColor = UIColor.white
        lblSecound.text = dictSecound.value(forKey: "job") as? String
        lblSecound.textColor = UIColor.white
        lblThird.text = dictSecound.value(forKey: "description") as? String
        lblThird.numberOfLines = 0
        lblThird.sizeToFit()
        
        let imgstr = dictSecound.value(forKey: "photo")
        imgview.sd_setImage(with: URL.init(string: imgstr as! String), placeholderImage: nil, options: .continueInBackground, completed: nil)
    
        imgview.layer.cornerRadius = imgview.frame.size.height/2
        imgview.layer.masksToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
