//
//  ViewController.swift
//  3.3
//
//  Created by Huy on 2/29/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let viewmain : UIView = {
        let viewmain = UIView()
        viewmain.translatesAutoresizingMaskIntoConstraints = false
        viewmain.backgroundColor = .white
        return viewmain
    }()
    let view1 : UIView = {
        let viewmain = UIView()
        viewmain.translatesAutoresizingMaskIntoConstraints = false
        viewmain.backgroundColor = .white
        return viewmain
    }()
    let view2 : UIView = {
           let viewmain = UIView()
           viewmain.translatesAutoresizingMaskIntoConstraints = false
           viewmain.backgroundColor = .white
           return viewmain
       }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


