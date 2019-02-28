//
//  ViewController.swift
//  VideoSelector1
//
//  Created by Rp on 07/12/18.
//  Copyright © 2018 Rp. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clickOnVideoSelect(){
        
        let controller = UIAlertController.init(title: "Select", message: nil, preferredStyle: .actionSheet)
        
        let actionLibrary = UIAlertAction.init(title: "Select Video", style: .default) { (action) in
            
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.mediaTypes = ["public.movie"]
            self.present(picker, animated: true, completion: nil)
            
        }
        
        controller.addAction(actionLibrary)
        
        let actionCancle = UIAlertAction.init(title: "Cancle", style: .default) { (action) in
            controller.dismiss(animated: true, completion: nil)
        }
        
        controller.addAction(actionCancle)
        
        self.present(controller, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        let url = info[UIImagePickerControllerMediaURL]
        
        let playercontroller = AVPlayerViewController()
        
        let player = AVPlayer.init(url: url as! URL)
        playercontroller.showsPlaybackControls = true
        playercontroller.player = player
        player.play()
        
        self.present(playercontroller, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

