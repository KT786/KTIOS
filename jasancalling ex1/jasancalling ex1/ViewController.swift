//
//  ViewController.swift
//  jasancalling ex1
//
//  Created by INDIA on 03/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet var tblview : UITableView!
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let dic = self.array.object(at: indexPath.row) as! NSDictionary
        
        let lbl1 = cell.contentView.viewWithTag(1100) as! UILabel
        let lbl2 = cell.contentView.viewWithTag(1200) as! UILabel
        let lbl3 = cell.contentView.viewWithTag(1300) as! UILabel
        let lbl4 = cell.contentView.viewWithTag(1400) as! UILabel
        let lbl5 = cell.contentView.viewWithTag(1500) as! UILabel
        
        
        lbl1.text = dic.value(forKey: "title") as! String
        lbl2.text = dic.value(forKey: "created_at") as! String
        lbl3.text = dic.value(forKey: "dateTime") as! String
        lbl4.text = dic.value(forKey: "details") as! String
        
        lbl4.numberOfLines = 0
        lbl4.sizeToFit()
        
        
        return cell
    }

 
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
