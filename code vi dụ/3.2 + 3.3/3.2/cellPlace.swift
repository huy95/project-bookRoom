//
//  cellPlace.swift
//  3.2
//
//  Created by Huy on 3/6/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class cellPlace: UITableViewCell {

    @IBOutlet weak var celltable: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        celltable.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
