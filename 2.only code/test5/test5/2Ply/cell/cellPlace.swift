//
//  cellPlace.swift
//  test5
//
//  Created by Huy on 3/19/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class cellPlace: UITableViewCell {

    @IBOutlet weak var viewcheck: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewcheck.layer.cornerRadius = 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
