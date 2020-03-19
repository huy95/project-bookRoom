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
        let buttonReturn1  = UIButton()
        buttonReturn1.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn1.setTitle("◎ Chọn lọc", for: .normal)
        buttonReturn1.contentHorizontalAlignment = .center
        buttonReturn1.setTitleColor(UIColor.init(named: "mau-xanh-nhe"), for: .normal)
        buttonReturn1.backgroundColor = .white
        buttonReturn1.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return buttonReturn1
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
    
    let viewmap : UIButton = {
           let view2 = UIButton()
           view2.translatesAutoresizingMaskIntoConstraints = false
        
        view2.setImage(UIImage(named: "diachi1"), for: .normal)
        view2.contentMode = .scaleToFill
           return view2
       }()
    let tableView : UITableView = {
        let tablView = UITableView()
        tablView.translatesAutoresizingMaskIntoConstraints = false
        return tablView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupName()
        setupView()
        button21.addTarget(self, action: #selector(touchOp), for: .touchUpInside)
    }
    @objc func touchOp(){
        print("111")
        let alert = UIAlertController(title: "Sắp xếp theo :", message: nil, preferredStyle: .actionSheet)
        let d1 = UIAlertAction(title: "Phù hợp nhất", style: .default)
        let d2 = UIAlertAction(title: "Giá thấp nhất", style: .default)
        let d3 =  UIAlertAction(title: "Giá cao nhất", style: .default)
        let d4 = UIAlertAction(title: "Đánh giá sao nhiều nhất", style: .default)
        let d5 = UIAlertAction(title: "Đánh giá sao (5 đến 0)", style: .default)
        alert.addAction(d1)
        alert.addAction(d2)
        alert.addAction(d3)
        alert.addAction(d4)
        alert.addAction(d5)
        present(alert, animated:  true, completion:  nil)
    
    }
    
    func setupName(){
        view.addSubview(viewmain)
        viewmain.addSubview(viewmainup)
        viewmainup.addSubview(textUp)
        viewmainup.addSubview(buttonReturn)
       
        viewmainup.addSubview(view2)
        view.addSubview(button21)
        view2.addSubview(button22)
        
        viewmain.addSubview(viewmap)
        viewmain.addSubview(tableView)
        
         textUp.layer.cornerRadius = 10
         button21.layer.cornerRadius = 15
         button22.layer.cornerRadius = 15
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "tablecellPhong", bundle: nil), forCellReuseIdentifier: "cellPhong")
    }
    func setupView(){
        viewmain.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmain.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        viewmain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        viewmainup.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmainup.bottomAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 90).isActive = true
        viewmainup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmainup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        textUp.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 30).isActive = true
        textUp.bottomAnchor.constraint(equalTo: textUp.topAnchor, constant: 40).isActive = true
        textUp.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 40).isActive = true
        textUp.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: -30).isActive = true
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
//        button21.rightAnchor.constraint(equalTo: button21.leftAnchor, constant: 150).isActive = true
        button21.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        button22.topAnchor.constraint(equalTo: view2.topAnchor, constant: 10).isActive = true
        button22.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10).isActive = true
        button22.leftAnchor.constraint(equalTo: button22.rightAnchor, constant: -150).isActive = true
        button22.rightAnchor.constraint(equalTo: view2.rightAnchor, constant: -30).isActive = true
        
        viewmap.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 0).isActive = true
        viewmap.bottomAnchor.constraint(equalTo: viewmap.topAnchor, constant: 80).isActive = true
        viewmap.leftAnchor.constraint(equalTo: viewmain.leftAnchor, constant: 0).isActive = true
        viewmap.rightAnchor.constraint(equalTo: viewmain.rightAnchor, constant: 0).isActive = true
        
        tableView.topAnchor.constraint(equalTo: viewmap.bottomAnchor, constant: 10).isActive = true
        tableView.bottomAnchor.constraint(equalTo: viewmain.bottomAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: viewmain.leftAnchor, constant: 5).isActive = true
        tableView.rightAnchor.constraint(equalTo: viewmain.rightAnchor, constant: -5).isActive = true
        
    }
    

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 236
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPhong", for: indexPath) as! tablecellPhong
        return cell
    }   
}
