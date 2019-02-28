//
//  WebViewVC.swift
//  DemoProject1
//
//  Created by Rp on 19/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit

class WebViewVC: UIViewController,UIWebViewDelegate{

    
    @IBOutlet var webview : UIWebView!
    
    var str : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        webview.loadRequest(URLRequest.init(url: URL.init(string: str)!))
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        SVProgressHUD.show()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        SVProgressHUD.dismiss()
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
