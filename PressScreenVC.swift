//
//  PressScreenVC.swift
//  DemoProject1
//
//  Created by Rp on 14/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class PressScreenVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tblview : UITableView!
    
    var arrObject : [PressModal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let leftbarbt = UIBarButtonItem.init(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(clickOn))
        self.navigationItem.leftBarButtonItem = leftbarbt
        
        
        tblview.rowHeight = UITableViewAutomaticDimension
        tblview.estimatedRowHeight = 100
        
        tblview.tableFooterView = UIView()
        
        SVProgressHUD.show()
        
        self.getmenu()
    }
    
    func getmenu(){
        
        let str = "http://kaptantest.info/osama/yasmin/thailand_party2/public/api/news"
        
        let url = URL.init(string: str)
        
        let request = NSMutableURLRequest.init(url: url as! URL)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession.init(configuration: configuration)
        
        let task =  session.dataTask(with: request as URLRequest, completionHandler: {(data,response, error) -> Void in
            SVProgressHUD.dismiss()
            do{
                let dic = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves)as!NSDictionary
                print(dic)
                
                DispatchQueue.main.async {
                  let array = dic.object(forKey: "data")as! NSArray
                    
                    for index in 0..<array.count
                    {
                        let dicPress = array.object(at: index) as! NSDictionary
                        
                        let pressmodal = PressModal()
                        pressmodal.strTital = dicPress.value(forKey: "title") as! String
                        pressmodal.strTime = dicPress.value(forKey: "created_at") as! String
                        pressmodal.strDetails = dicPress.value(forKey: "details") as! String
                        
                        self.arrObject.append(pressmodal)
                    }
                    
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
        return arrObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let lbl = cell.contentView.viewWithTag(1001)as! UILabel
        let lblSecound = cell.contentView.viewWithTag(1002)as! UILabel
        let lblThird = cell.contentView.viewWithTag(1003)as! UILabel
        let view = cell.contentView.viewWithTag(3001)as! UIView
        
        let pressObject = arrObject[indexPath.row]
        
        lbl.text = pressObject.strTital
        lblSecound.text = pressObject.strTime
      
        lblThird.numberOfLines = 0
        lblThird.text = pressObject.strDetails
        lblThird.sizeToFit()
        
        view.layer.cornerRadius = 10
        
        cell.selectionStyle = .none
        return cell
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
