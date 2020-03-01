//
//  ViewController.swift
//  2.1
//
//  Created by Huy on 2/26/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label1 : UIButton = {
        let label1 = UIButton()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.setImage(UIImage(named: "car1"), for: .normal)
//        label1.backgroundColor = #colorLiteral(red: 0.4801121227, green: 0.8980392157, blue: 0.4469951447, alpha: 1)
        label1.backgroundColor = #colorLiteral(red: 0.8980392157, green: 0.7113700104, blue: 0.1151848645, alpha: 1)
//        label1.contentHorizontalAlignment = .center
//        label1.contentVerticalAlignment = .center
        return label1
    }()
    let view1 : UIView = {
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = true
        view1.backgroundColor = .white
        return view1
    }()
    let view2 : UIView = {
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = true
        view1.backgroundColor = UIColor.init(named: "mau-xam")
        return view1
    }()
    let view3 : UIView = {
          let view1 = UIView()
          view1.translatesAutoresizingMaskIntoConstraints = true
          view1.backgroundColor = UIColor.init(named: "mau-xam")
          return view1
      }()
    let label11 : UILabel = {
        let label11 = UILabel()
        label11.translatesAutoresizingMaskIntoConstraints = false
        label11.text = "Bạn muốn nghỉ ngơi ở đâu ?"
        label11.textAlignment = .center
        label11.font = .boldSystemFont(ofSize: 30)
        return label11
    }()
    
    let textplace : UITextField = {
        let textplace = UITextField()
        textplace.translatesAutoresizingMaskIntoConstraints = false
        textplace.placeholder = " "
    }()
    let label2 : UIButton = {
           let label1 = UIButton()
           label1.translatesAutoresizingMaskIntoConstraints = false
           label1.setImage(UIImage(named: "taxi1"), for: .normal)
           label1.backgroundColor = #colorLiteral(red: 0.4801121227, green: 0.8980392157, blue: 0.4469951447, alpha: 1)
           return label1
       }()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        

        
        
        
    }
    func setupView(){
        view.addSubview(view1)
//               view1.addSubview(view2)
//               view2.addSubview(label1)
//               view1.addSubview(label2)
//               view1.addSubview(view3)
               label1.layer.cornerRadius = 20
               label2.layer.cornerRadius = 20
        
    }
    func setupLayout(){
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        
        
        
        
        label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        label1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
        label1.bottomAnchor.constraint(equalTo: label1.topAnchor, constant: 40).isActive = true
        label1.rightAnchor.constraint(equalTo: label1.leftAnchor, constant: 40).isActive = true
        
        label2.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        label2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 120).isActive = true
        label2.bottomAnchor.constraint(equalTo: label2.topAnchor, constant: 40).isActive = true
        label2.rightAnchor.constraint(equalTo: label2.leftAnchor, constant: 40).isActive = true
    }

}

