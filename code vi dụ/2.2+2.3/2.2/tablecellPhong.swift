//
//  tablecellPhong.swift
//  2.2
//
//  Created by Huy on 3/5/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class tablecellPhong: UITableViewCell {

    
    @IBOutlet weak var imagePhong: UIImageView!
    
    @IBOutlet weak var labeelprice: UILabel!
    
    @IBOutlet weak var labelImage: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
