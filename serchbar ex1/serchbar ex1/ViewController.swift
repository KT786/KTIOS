//
//  ViewController.swift
//  serchbar ex1
//
//  Created by INDIA on 23/09/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, UISearchBarDelegate {

    @IBOutlet var tabletview : UITableView!
    
    let array = NSArray.init(objects:
        "SUnday","monday","wensaday","tusday","Friday","satarday")
    
   
    
    var arrayserch = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    arrayserch = NSMutableArray.init(array: array)
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayserch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let lbl = cell.viewWithTag(1100) as! UILabel
        lbl.text = arrayserch.object(at: indexPath.row) as! String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n"
        {
            searchBar.resignFirstResponder()
            return true
        }
        else{
            
            var searchStr : NSString = ""
            if ((searchBar.text as! NSString).length == 0 && text != nil)
            {
                searchStr = text as NSString
            }
            else{
                searchStr = (searchBar.text! as NSString).appending(text) as NSString
            }
            
            arrayserch.removeAllObjects()
            
            if ((searchBar.text! as NSString).length > 0 && text == "")
            {
                searchStr = (searchBar.text as! NSString).substring(to: (searchBar.text as! NSString).length-1) as NSString
                
            }
            
            let predicate = NSPredicate.init(format: "SELF contains[cd] %@", searchStr)
            let filtereArray = array.filtered(using: predicate)
            
            if filtereArray.count > 0{
                
                self.arrayserch.addObjects(from: filtereArray)
                self.tabletview.isHidden = false
            }
            
            if text != ""
            {
                if arrayserch.count == 0
                {
                    arrayserch.removeAllObjects()
                    self.tabletview.isHidden = true
                }
                
            }
            else{
                
                if searchStr == ""
                {
                    arrayserch.removeAllObjects()
                    self.tabletview.isHidden = true
                }
            }
            
              tabletview.reloadData()
            
        }
        return true
    }

    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

