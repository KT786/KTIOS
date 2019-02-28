//
//  ViewController.swift
//  Json calling ex3
//
//  Created by INDIA on 06/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tabview: UITableView!
    
    
    var array = NSArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.DataOn()
        
    }

    func DataOn(){
        
        let str = "http://kaptantest.info/osama/yasmin/thailand_party2/public/api/events"
        
        let url = URL.init(string: str)
        
        let request = NSMutableURLRequest.init(url: url!)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession.init(configuration: configuration)
        
        let task =  session.dataTask(with: request as URLRequest, completionHandler: {(data,response, error) -> Void in
            
            
            do{
                
                let dict = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as! NSDictionary
                print(dict)
                
                DispatchQueue.main.async {
                    self.array = dict.object(forKey: "data") as! NSArray
                    self.tabview.reloadData()
                    
                    
                }
            
                
            }catch{
                
            }
            
        })
        
        task.resume()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

