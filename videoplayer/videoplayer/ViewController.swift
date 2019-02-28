//
//  ViewController.swift
//  videoplayer
//
//  Created by Rp on 16/11/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
      
        let controller = AVPlayerViewController()
        
        let url = URL.init(string: "http://kaptantest.info/osama/yasmin/thailand_party2/public/uploads/gallery_videos/videos/video-15416014351.mp4")
        
        let player = AVPlayer.init(url: url!)
        player.play()
        
        controller.player = player
        
        self.present(controller, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

