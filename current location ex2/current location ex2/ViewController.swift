//
//  ViewController.swift
//  current location ex2
//
//  Created by INDIA on 11/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationmanager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
            locationmanager.requestAlwaysAuthorization()
        locationmanager.startUpdatingLocation()
        locationmanager.desiredAccuracy = kCLLocationAccuracyBest
        locationmanager.delegate = self
        
        
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        locationmanager.stopUpdatingLocation()
        
        print(locations.last)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

