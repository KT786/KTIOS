//
//  ViewController.swift
//  videoselect ex1
//
//  Created by INDIA on 12/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    @IBAction func clickonbtn(){
        
        let controll = UIAlertController.init(title: "OPTION", message: nil, preferredStyle: .actionSheet)
        let action  = UIAlertAction.init(title: "Select", style: .default) {  (action) in
            
            let picker = UIImagePickerController()
            picker.delegate = self
        //    picker.mediaTypes = ["public.movie"]
            self.present(picker, animated: true, completion: nil)
        }
        
        controll.addAction(action)
        
        let cancal = UIAlertAction.init(title: "cancal", style: .default) {  (action) in
            
            controll.dismiss(animated: true, completion: nil)
            
            
            
        }
        
        controll.addAction(cancal)
        self.present(controll, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
  /*  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        let url = info[UIImagePickerControllerMediaURL]
        let playerr = AVPlayerViewController()
        
        let avplayer = AVPlayer.init(url: url! as! URL)
        playerr.showsPlaybackControls = true
        playerr.player = avplayer
        avplayer.play()
        
        
        
    } */
    
    
    

    
    
    
    
    @IBAction func clickonup(){
    
    let cont = UIAlertController.init(title: "Click here", message: "$$$$", preferredStyle: .actionSheet)
        let sel = UIAlertAction.init(title: "OK", style: .default) {(action) in
            
            let pick = UIImagePickerController()
            pick.delegate = self
            self.present(pick, animated: true, completion: nil)
        }
        
        cont.addAction(sel)
        
        let can  = UIAlertAction.init(title: "exit", style: .default) { (action) in
            cont.dismiss(animated: true, completion: nil)
            
        }
     
        cont.addAction(can)
        self.present(cont, animated: true, completion: nil)
        
    }
    
  
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
         picker.dismiss(animated: true, completion: nil)

        let url = info[UIImagePickerControllerMediaURL]
        let player = AVPlayerViewController()
        let avplay = AVPlayer.init(url: url as! URL)

        player.player = avplay
        player.showsPlaybackControls = true
        avplay.play()


    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

