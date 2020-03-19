//
//  ViewController.swift
//  3.2
//
//  Created by Huy on 3/6/20.
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
    let labelHN : UILabel = {
        let buttonReturn  = UILabel()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.text = "HN đến SG"
        buttonReturn.textColor = .white
        buttonReturn.font = .boldSystemFont(ofSize: 18)
        return buttonReturn
    }()
    let labelngay : UILabel = {
           let buttonReturn  = UILabel()
           buttonReturn.translatesAutoresizingMaskIntoConstraints = false
           buttonReturn.text = "26 thag 12 | 1 hành khách | phổ thông"
           buttonReturn.textColor = .white
           buttonReturn.font = .boldSystemFont(ofSize: 16)
           return buttonReturn
       }()
    let buttonLoc : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setTitle("◎Bộ lọc", for: .normal)
        buttonReturn.setTitleColor(.white, for: .normal)
        buttonReturn.titleLabel?.font = .boldSystemFont(ofSize: 13)
        buttonReturn.backgroundColor = UIColor.init(named: "xanh nhat")
        return buttonReturn
    }()
    let tableview : UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
        setLayout()
    }
    func setup(){
        view.addSubview(viewmain)
        viewmain.addSubview(viewmainup)
        viewmainup.addSubview(buttonReturn)
        viewmainup.addSubview(labelHN)
        viewmainup.addSubview(labelngay)
        viewmainup.addSubview(buttonLoc)
        buttonLoc.layer.cornerRadius = 10
        viewmain.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(UINib(nibName: "cellPlace", bundle: nil), forCellReuseIdentifier: "cell1")
        
    }
    func setLayout(){
        viewmain.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmain.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        viewmain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        viewmainup.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmainup.bottomAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 110).isActive = true
        viewmainup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmainup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        buttonReturn.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 30).isActive = true
        buttonReturn.bottomAnchor.constraint(equalTo: buttonReturn.topAnchor, constant: 40).isActive = true
        buttonReturn.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 3).isActive = true
        buttonReturn.rightAnchor.constraint(equalTo: buttonReturn.leftAnchor, constant: 30).isActive = true
        
        labelHN.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 30).isActive = true
        labelHN.bottomAnchor.constraint(equalTo: labelHN.topAnchor, constant: 20).isActive = true
        labelHN.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 55).isActive = true
        labelHN.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: 30).isActive = true
        
        labelngay.topAnchor.constraint(equalTo: labelHN.bottomAnchor, constant: 2).isActive = true
        labelngay.bottomAnchor.constraint(equalTo: labelngay.topAnchor, constant: 20).isActive = true
        labelngay.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 55).isActive = true
        labelngay.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: 30).isActive = true
        
        buttonLoc.bottomAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: -3).isActive = true
        buttonLoc.topAnchor.constraint(equalTo: labelngay.bottomAnchor, constant: 5).isActive = true
        
        buttonLoc.leftAnchor.constraint(equalTo: buttonLoc.rightAnchor, constant: -60).isActive = true
        buttonLoc.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: -10).isActive = true
        
        tableview.topAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 10).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }
        
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! cellPlace
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let zoomVC = screen33()
        //khi chuyen man hinh se ko co navigation
//        zoomVC.modalPresentationStyle = .fullScreen
        present(zoomVC, animated: true, completion: nil)
    }
    
}
