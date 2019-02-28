//
//  XIBcellTableViewCell.swift
//  XIBcell ex1
//
//  Created by INDIA on 20/10/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

class XIBcellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        lbl1.text = "LOGIN"
        lbl2.text = "User Name :"
        lbl3.text = "Password :"
        lbl3.sizeToFit()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
