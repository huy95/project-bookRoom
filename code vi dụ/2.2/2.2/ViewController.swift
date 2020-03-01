//
//  ViewController.swift
//  2.2
//
//  Created by Huy on 2/28/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit
//⦿◎▼🔍
class ViewController: UIViewController {
    let viewmain : UIView = {
        let viewmain = UIView()
        viewmain.translatesAutoresizingMaskIntoConstraints = false
        viewmain.backgroundColor = .white
        return viewmain
    }()
    let viewmainup : UIView = {
          let viewmainup = UIView()
          viewmainup.translatesAutoresizingMaskIntoConstraints = false
        viewmainup.backgroundColor = UIColor.init(named: "mau-xanh-nhe")
          return viewmainup
      }()
    let buttonReturn : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setImage(UIImage.init(named: "left"), for: .normal)
        return buttonReturn
    }()
    let textUp : UITextField = {
        let textup = UITextField()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.backgroundColor = .white
        textup.text = "   🔍     Hoàn Kiếm Hà Nội"
        textup.font = .boldSystemFont(ofSize: 16)
        return textup
    }()
    let view2 : UIView = {
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.backgroundColor = .brown
        return view2
    }()
    let button21 : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setTitle("◎ Chọn lọc", for: .normal)
        buttonReturn.contentHorizontalAlignment = .center
        buttonReturn.setTitleColor(UIColor.init(named: "mau-xanh-nhe"), for: .normal)
        buttonReturn.backgroundColor = .white
        buttonReturn.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return buttonReturn
    }()
    let button22 : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setTitle("Phù hợp ▼", for: .normal)
        buttonReturn.contentHorizontalAlignment = .center
        buttonReturn.setTitleColor(.white, for: .normal)
        buttonReturn.backgroundColor = UIColor.init(named: "mau-xanh-nhe")
        buttonReturn.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return buttonReturn
    }()
    
    let viewmap : UIImageView = {
           let view2 = UIImageView()
           view2.translatesAutoresizingMaskIntoConstraints = false
        view2.image = UIImage.init(named: "diachi1")
        view2.contentMode = .scaleToFill
           return view2
       }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupName()
        setupView()
    }
    func setupName(){
        view.addSubview(viewmain)
        viewmain.addSubview(viewmainup)
        viewmainup.addSubview(textUp)
        viewmainup.addSubview(buttonReturn)
       
        viewmainup.addSubview(view2)
        view2.addSubview(button21)
        view2.addSubview(button22)
        
        viewmain.addSubview(viewmap)
        
         textUp.layer.cornerRadius = 10
         button21.layer.cornerRadius = 15
         button22.layer.cornerRadius = 15
        
    }
    func setupView(){
        viewmain.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmain.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        viewmain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        viewmainup.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmainup.bottomAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 100).isActive = true
        viewmainup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmainup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        textUp.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 30).isActive = true
        textUp.bottomAnchor.constraint(equalTo: textUp.topAnchor, constant: 40).isActive = true
        textUp.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 40).isActive = true
        textUp.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: 35).isActive = true
//        textUp.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 20).isActive = true
//        textUp.bottomAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 20).isActive = true

        buttonReturn.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 30).isActive = true
        buttonReturn.bottomAnchor.constraint(equalTo: buttonReturn.topAnchor, constant: 40).isActive = true
        buttonReturn.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 3).isActive = true
        buttonReturn.rightAnchor.constraint(equalTo: buttonReturn.leftAnchor, constant: 30).isActive = true
        
        view2.topAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 0).isActive = true
        view2.bottomAnchor.constraint(equalTo: view2.topAnchor, constant: 60).isActive = true
        view2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        view2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        button21.topAnchor.constraint(equalTo: view2.topAnchor, constant: 10).isActive = true
        button21.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10).isActive = true
        button21.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 30).isActive = true
        button21.rightAnchor.constraint(equalTo: button21.leftAnchor, constant: 150).isActive = true
        
        button22.topAnchor.constraint(equalTo: view2.topAnchor, constant: 10).isActive = true
        button22.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10).isActive = true
        button22.leftAnchor.constraint(equalTo: button22.rightAnchor, constant: -150).isActive = true
        button22.rightAnchor.constraint(equalTo: view2.rightAnchor, constant: -30).isActive = true
        
        viewmap.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 0).isActive = true
        viewmap.bottomAnchor.constraint(equalTo: viewmap.topAnchor, constant: 100).isActive = true
        viewmap.leftAnchor.constraint(equalTo: viewmap.leftAnchor, constant: 0).isActive = true
        viewmap.rightAnchor.constraint(equalTo: viewmap.rightAnchor, constant: 0).isActive = true
        
    }
    

}

