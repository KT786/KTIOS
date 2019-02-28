//
//  ViewController.swift
//  JSON CALLING EX2
//
//  Created by INDIA on 06/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    

    @IBOutlet weak var tabview: UITableView!
    
    var array = NSArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.dataon()
        
    }
    
    
    func dataon(){
        
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabview.dequeueReusableCell(withIdentifier: "abc", for: indexPath)
        
        let dic = self.array.object(at: indexPath.row) as! NSDictionary
        
        let lbl1 = cell.viewWithTag(1100) as! UILabel
        let lbl2 = cell.viewWithTag(1200) as! UILabel
        let lbl3 = cell.viewWithTag(1300) as! UILabel
        let lbl4 = cell.viewWithTag(1400) as! UILabel
        
        lbl1.text = dic.value(forKey: "id") as! String
        lbl2.text = dic.value(forKey: "title") as! String
        lbl3.text = dic.value(forKey: "updated_at") as! String
        lbl4.text = dic.value(forKey: "address") as! String
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

