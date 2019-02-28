//
//  ViewController.swift
//  loading
//
//  Created by INDIA on 01/12/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            CircleAnimation.shared.show(self.view)
            DispatchQueue.main.asyncAfter(deadline: .now()+5, execute: {
                CircleAnimation.shared.hideOverlayView()
            })
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

