//
//  ViewController.swift
//  video player ex1
//
//  Created by INDIA on 07/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
   override func viewDidAppear(_ animated: Bool) {
    /*    let controller = AVPlayerViewController()
        
        let url = URL.init(string: "http://kaptantest.info/osama/yasmin/thailand_party2/public/uploads//gallery_videos/videos/video-15416014351.mp4")
        let player = AVPlayer.init(url: url!)
        player.play()
        
        controller.player = player
        
       self.present(controller , animated: true, completion: nil)
    
    */
        
        
        let control1 = AVPlayerViewController()
        
        let url1 = URL.init(string: "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v")
        
        let player1 = AVPlayer.init(url: url1!)
        player1.play()
        
        control1.player = player1
        
        self.present(control1 , animated: true, completion: nil)
        
        
    
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

