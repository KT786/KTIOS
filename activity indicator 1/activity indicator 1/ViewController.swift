//
//  ViewController.swift
//  activity indicator 1
//
//  Created by INDIA on 18/07/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var activityindicatorview : UIActivityIndicatorView!
    
    let activityindicatorview1 = UIActivityIndicatorView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        activityindicatorview.startAnimating()
        activityindicatorview.frame = CGRect.init(x: 30, y: 55, width: 100, height: 35)
        activityindicatorview.activityIndicatorViewStyle = .white
        activityindicatorview.backgroundColor = UIColor.black
        self.perform(#selector(self.stoploading), with: activityindicatorview, afterDelay: 5)
        
        
     activityindicatorview1.activityIndicatorViewStyle = .whiteLarge
        activityindicatorview1.backgroundColor = UIColor.black
        activityindicatorview1.frame = CGRect.init(x: 30, y: 120, width: 100, height: 35)
        activityindicatorview1.startAnimating()
        self.perform(#selector(self.stoploading), with: activityindicatorview1, afterDelay: 5)
        view.addSubview(activityindicatorview1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func stoploading(activity:UIActivityIndicatorView){
    activity.stopAnimating()
    
        func stoploading(activity1:UIActivityIndicatorView){
        activity1.stopAnimating()
        
        }


}
}
