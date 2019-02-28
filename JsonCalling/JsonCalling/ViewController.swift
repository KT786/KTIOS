//
//  ViewController.swift
//  JsonCalling
//
//  Created by INDIA on 01/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tblview : UITableView!
    
    var array = NSArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.getmenu()
    }
    
    func getmenu(){
        
        let str = "http://kaptantest.info/osama/yasmin/thailand_party2/public/api/events"
        
        let url = URL.init(string: str)
        
        let request = NSMutableURLRequest.init(url: url!)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession.init(configuration: configuration)
        
        
        let task =  session.dataTask(with: request as URLRequest, completionHandler: {(data,response, error) -> Void in
            
            do{
                
                let dic = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as! NSDictionary
                
                print(dic)
                
                DispatchQueue.main.async {
                    
                    self.array = dic.object(forKey: "data") as! NSArray
                    
                    self.tblview.reloadData()
                    
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
      return  array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let dict = self.array.object(at: indexPath.row) as! NSDictionary
        
        let lbl = cell.contentView.viewWithTag(1001) as! UILabel
        let lblSecound = cell.contentView.viewWithTag(1002) as! UILabel
        let lblThird = cell.contentView.viewWithTag(1003) as! UILabel
        let lblForth = cell.contentView.viewWithTag(1004) as! UILabel

        
        lbl.text = dict.value(forKey: "title") as! String
        lblSecound.text = dict.value(forKey: "created_at") as! String
        lblThird.text = dict.value(forKey: "dateTime") as! String
        lblForth.text = dict.value(forKey: "details") as! String
        
        lblForth.numberOfLines = 0
        lblForth.sizeToFit()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

