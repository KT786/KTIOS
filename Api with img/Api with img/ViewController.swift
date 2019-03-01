//
//  ViewController.swift
//  Api with img
//
//  Created by Rp on 31/10/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tbl : UITableView!
    var array = NSArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.getmenu()
    }
    
    func getmenu(){
        
        let str = "http://45.76.188.84/dplapi/api/driver/GetTopGoalScorers/1/1"
        
         let url = URL.init(string: str)
        
        let request = NSMutableURLRequest.init(url: url as! URL)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession.init(configuration: configuration)
        
        let task =  session.dataTask(with: request as URLRequest, completionHandler: {(data,response, error) -> Void in
            
            do{
                self.array = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as! NSArray
                
                print(self.array)
            
                DispatchQueue.main.async {
                    self.tbl.reloadData()

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let lbl = cell.contentView.viewWithTag(1001) as! UILabel
        let imgview = cell.contentView.viewWithTag(1002) as! UIImageView
        
        let dic = self.array.object(at: indexPath.row) as! NSDictionary
        
        lbl.text = dic.value(forKey: "name") as! String
        
        let imagestr = dic.value(forKey: "url") as! String
        let strImage = "http://45.76.188.84/dplimages/Image/\(imagestr)"
        
        imgview.sd_setImage(with: URL.init(string: strImage), placeholderImage: nil, options: .continueInBackground, completed: nil)
        
        return cell 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

