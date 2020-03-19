//
//  Fly31.swift
//  test5
//
//  Created by Huy on 3/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Fly31: UIViewController {
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "trang")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let mainView1 : UIView = {
        let mainView1 = UIView()
        mainView1.translatesAutoresizingMaskIntoConstraints = false
        mainView1.backgroundColor = UIColor(named: "xam")
        return mainView1
    }()
    //    let mainView1 : UIView = {
    //        let mainview1 = UIView()
    //            mainview1.translatesAutoresizingMaskIntoConstraints = false
    //            mainview1.backgroundColor = UIColor(named: "xam")
    //            return mainview1
    //        }()
    let FlyFrom : UITextField = {
        let FlyFrom = UITextField()
        FlyFrom.translatesAutoresizingMaskIntoConstraints = false
        FlyFrom.backgroundColor = UIColor(named: "mau-xamdam")
        FlyFrom.placeholder = "   ✈︎   Bay từ"
        FlyFrom.borderStyle = .roundedRect
        FlyFrom.font = .boldSystemFont(ofSize: 18)
        return FlyFrom
        
    }()
    let FlyTo : UITextField = {
        let FlyFrom = UITextField()
        FlyFrom.translatesAutoresizingMaskIntoConstraints = false
        FlyFrom.backgroundColor = UIColor(named: "mau-xamdam")
        FlyFrom.placeholder = "   ⍢   Bay đến"
        FlyFrom.borderStyle = .roundedRect
        FlyFrom.font = .boldSystemFont(ofSize: 18)
        return FlyFrom
        
    }()
    let buttonFind : UIButton = {
        let buttonFind = UIButton()
        buttonFind.translatesAutoresizingMaskIntoConstraints = false
        buttonFind.setTitle("Tìm chuyến bay", for: .normal)
        buttonFind.setTitleColor(UIColor.white, for: .normal)
        buttonFind.titleLabel?.font = .boldSystemFont(ofSize: 18)
        buttonFind.contentHorizontalAlignment = .center
        buttonFind.backgroundColor = UIColor.init(named: "xanh")
        return buttonFind
    }()
    let Label1 : UIButton = {
        let Label1 = UIButton()
        Label1.translatesAutoresizingMaskIntoConstraints = false
        Label1.setTitle("1 hành khách, Phổ thông", for: .normal)
        Label1.setTitleColor(UIColor.init(named: "xanh"), for: .normal)
        Label1.titleLabel?.font = .boldSystemFont(ofSize: 18)
        Label1.contentHorizontalAlignment = .center
        Label1.backgroundColor = .white
        
        
        return Label1
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupLay()
    }
    
    func setupLay(){
        view.addSubview(mainView1)
        mainView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 180).isActive = true
        mainView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
        mainView1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        mainView1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        mainView1.layer.cornerRadius = 5
        
        mainView1.addSubview(FlyFrom)
        FlyFrom.topAnchor.constraint(equalTo: mainView1.topAnchor, constant: 60).isActive = true
        FlyFrom.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        FlyFrom.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        FlyFrom.bottomAnchor.constraint(equalTo: FlyFrom.topAnchor, constant: 60).isActive = true
        
        mainView1.addSubview(FlyTo)
        FlyTo.topAnchor.constraint(equalTo: FlyFrom.bottomAnchor, constant: 20).isActive = true
        FlyTo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        FlyTo.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        FlyTo.bottomAnchor.constraint(equalTo: FlyTo.topAnchor, constant: 60).isActive = true
        
        mainView1.addSubview(buttonFind)
        buttonFind.bottomAnchor.constraint(equalTo: mainView1.bottomAnchor, constant: -20).isActive = true
        buttonFind.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        buttonFind.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        buttonFind.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonFind.layer.cornerRadius = 10
        buttonFind.addTarget(self, action: #selector(Goto), for: .touchUpInside)
        
        mainView1.addSubview(Label1)
        Label1.bottomAnchor.constraint(equalTo: buttonFind.topAnchor, constant: -30).isActive = true
        Label1.leftAnchor.constraint(equalTo: mainView1.leftAnchor, constant: 20).isActive = true
        Label1.rightAnchor.constraint(equalTo: mainView1.rightAnchor, constant: -20).isActive = true
        Label1.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    @objc func Goto(){
        let secondVC = Fly32()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        secondVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // set cho navigationBar trong suốt để thấy ảnh ở background (cần đủ 3 dòng)
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
    }
    
    // khi view sắp sửa bị ẩn thì set lại thuộc tính isTranslucent = false để các navigationBar trước đó không bị ảnh hưởng
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController!.navigationBar.isTranslucent = false
        
    }
    func setupLayout(){
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}
