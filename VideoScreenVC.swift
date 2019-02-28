//
//  VideoScreenVC.swift
//  DemoProject1
//
//  Created by Rp on 14/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit
import AVKit

class VideoScreenVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tblview : UITableView!

    var array = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let leftbarbtn = UIBarButtonItem.init(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(clickOn))
        self.navigationItem.leftBarButtonItem = leftbarbtn
        
        tblview.tableFooterView = UIView()
        tblview.rowHeight = UITableViewAutomaticDimension
        tblview.estimatedRowHeight = 200
        
        SVProgressHUD.show()
        
        self.getmenu()
    }
    
    func getmenu(){
        
        let str = "http://kaptantest.info/osama/yasmin/thailand_party2/public/api/videos"
        
        let url = URL.init(string: str)
        
        let request = NSMutableURLRequest.init(url: url as! URL)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession.init(configuration: configuration)
        
        let task =  session.dataTask(with: request as URLRequest, completionHandler: {(data,response, error) -> Void in
            SVProgressHUD.dismiss()
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
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let lbl = cell.contentView.viewWithTag(1001) as! UILabel
        let lblSecound = cell.contentView.viewWithTag(1002) as! UILabel
        let imgview = cell.contentView.viewWithTag(2001) as! UIImageView
        
        let dict = self.array.object(at: indexPath.row) as! NSDictionary
        
        lbl.numberOfLines = 0
        lblSecound.numberOfLines = 0
        lbl.text = dict.value(forKey: "title") as! String
        lblSecound.text = dict.value(forKey: "details") as! String
        lbl.sizeToFit()
        lblSecound.sizeToFit()
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let controller = AVPlayerViewController()
        
        let dict = self.array.object(at: indexPath.row) as! NSDictionary
        
        let url = URL.init(string: dict.value(forKey: "file") as! String)
        
        let player = AVPlayer.init(url: url!)
        player.play()
        
        controller.player = player
        
        self.present(controller, animated: true, completion: nil)
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    @objc func clickOn(){
        self.sideMenuController?.showLeftView(animated: true, completionHandler: nil)
        
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
