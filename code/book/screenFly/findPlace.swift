//
//  findPlace.swift
//  book
//
//  Created by Huy on 2/26/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class findPlace: UIViewController {
    let view1 : UIView = {
      let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        return view1
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(cancelPress))
               navigationItem.leftBarButtonItem = cancelButton
        let rootViewController = navigationController!.viewControllers.first
        
        
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 220).isActive = true
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        // Do any additional setup after loading the view.
    }
    @objc func cancelPress(){
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
