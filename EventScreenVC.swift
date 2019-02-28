//
//  EventScreenVC.swift
//  DemoProject1
//
//  Created by Rp on 14/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class EventScreenVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tblview : UITableView!

    var arrObject : [EventModal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let leftbarbtn = UIBarButtonItem.init(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(self.cickOn))
        self.navigationItem.leftBarButtonItem = leftbarbtn
        self.navigationController?.navigationBar.isTranslucent = false
        
        tblview.tableFooterView = UIView()
        tblview.rowHeight = UITableViewAutomaticDimension
        tblview.estimatedRowHeight = 100
        
        self.getmenu()
    }
    
    func getmenu(){
        
        SVProgressHUD.show()
        
        let str = "http://kaptantest.info/osama/yasmin/thailand_party2/public/api/events"
        
        let url = URL.init(string: str)
        
        let request = NSMutableURLRequest.init(url: url as! URL)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession.init(configuration: configuration)
        
        let task =  session.dataTask(with: request as URLRequest, completionHandler: {(data,response, error) -> Void in
            
            SVProgressHUD.dismiss()
            
            do{
                let dic = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves)as! NSDictionary
                
                print(dic)
                
                DispatchQueue.main.async {
                    let array = dic.object(forKey: "data")as! NSArray
                    
                    for index in 0..<array.count
                    {
                        let dicEvent = array.object(at: index) as! NSDictionary
                        
                        let eventModal = EventModal()
                        eventModal.strEventTitle = dicEvent.value(forKey: "title") as! String
                        eventModal.strTime = dicEvent.value(forKey: "dateTime") as! String
                        eventModal.strLocatiom = dicEvent.value(forKey: "address") as! String
                        eventModal.strDiscription = dicEvent.value(forKey: "details") as! String
                        
                        self.arrObject.append(eventModal)
                        
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
        let lblFourth = cell.contentView.viewWithTag(1004)as! UILabel
        
        let eventObject = arrObject[indexPath.row]
        
        lbl.text = eventObject.strEventTitle
        lblSecound.text = eventObject.strLocatiom
        lblThird.text = eventObject.strTime
        
        lblFourth.numberOfLines = 0
        lblFourth.text = eventObject.strDiscription
        lblFourth.sizeToFit()
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    @objc func cickOn(){
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
