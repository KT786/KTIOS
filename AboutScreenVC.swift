//
//  AboutScreenVC.swift
//  DemoProject1
//
//  Created by Rp on 14/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class AboutScreenVC: UIViewController {
    
    @IBOutlet var lbl : UILabel!
    @IBOutlet var txtView : UITextView!

    var array = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let leftbarbtn = UIBarButtonItem.init(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(clickOn))
        self.navigationItem.leftBarButtonItem = leftbarbtn
        
        SVProgressHUD.show()
        self.getmenu()
    }

    func getmenu(){
        
        let str = "http://kaptantest.info/osama/yasmin/thailand_party2/public/api/pages"
        
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
                    let dicobject = self.array.object(at: 0) as! NSDictionary
                    self.lbl.text = dicobject.value(forKey: "title") as! String
                    self.txtView.text = dicobject.value(forKey: "details") as! String
                }
            }catch{
                
            }
            
        })
        
        task.resume()
    }
    
    @objc func clickOn(){
        sideMenuController?.showLeftView(animated: true, completionHandler: nil)
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
