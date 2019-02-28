//
//  ViewController.swift
//  datepicker ex1
//
//  Created by INDIA on 22/09/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet var datepicker : UIDatePicker!
    @IBOutlet var textfield : UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datepicker.minimumDate = Date()
        datepicker.datePickerMode = UIDatePickerMode.countDownTimer
       datepicker.addTarget(self, action: #selector(ClickonDate(datepicker:)), for: .valueChanged)
        
        let strdate = "15/12/2020"
        let formator = DateFormatter()
        formator.dateFormat = "dd/MM/yyyy"
        
        let date = formator.date(from: strdate)
        datepicker.maximumDate = date
        textfield.inputView = datepicker
        
        
    }
    
    @objc func ClickonDate (datepicker : UIDatePicker){
        
    
      //  let formator = DateFormatter()
     //   formator.dateFormat = "MM/dd/yyyy"
        textfield.text = formator.string(from: datepicker.countDownDuration)
        
 //   }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

