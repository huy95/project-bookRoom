//
//  Fly.swift
//  book
//
//  Created by Huy on 2/21/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Fly: UIViewController {
    let maiview : UIView = {
           let mainview = UIView()
           mainview.translatesAutoresizingMaskIntoConstraints = false
           mainview.backgroundColor = .white
           return mainview
       }()
       
       let maiview1 : UIView = {
              let mainview1 = UIView()
              mainview1.translatesAutoresizingMaskIntoConstraints = false
              mainview1.backgroundColor = UIColor(named: "mau-xam")
              return mainview1
          }()
       let FlyFrom : UITextField = {
           let FlyFrom = UITextField()
           FlyFrom.translatesAutoresizingMaskIntoConstraints = false
           FlyFrom.backgroundColor = UIColor(named: "mau-xamdam")
           FlyFrom.placeholder = "   ✈︎   Bay từ"
           FlyFrom.font = .boldSystemFont(ofSize: 18)
           return FlyFrom
           
       }()
        let FlyTo : UITextField = {
               let FlyFrom = UITextField()
               FlyFrom.translatesAutoresizingMaskIntoConstraints = false
           FlyFrom.backgroundColor = UIColor(named: "mau-xamdam")
               FlyFrom.placeholder = "   ⍢   Bay đến"
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
           buttonFind.backgroundColor = UIColor.init(named: "mau-xanh-nhe")
           return buttonFind
       }()
       let Label1 : UIButton = {
           let Label1 = UIButton()
           Label1.translatesAutoresizingMaskIntoConstraints = false
           Label1.setTitle("1 hành khách, Phổ thông", for: .normal)
           Label1.setTitleColor(UIColor.init(named: "mau-xanh-nhe"), for: .normal)
           Label1.titleLabel?.font = .boldSystemFont(ofSize: 18)
           Label1.contentHorizontalAlignment = .center
           Label1.backgroundColor = UIColor.init(named: "mau-xamdam")

           return Label1
           
       }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
        // Do any additional setup after loading the view.
    }
     func setupView(){
                view.addSubview(maiview)
                maiview.addSubview(maiview1)
                maiview1.addSubview(FlyFrom)
                maiview1.addSubview(FlyTo)
                maiview1.addSubview(buttonFind)
                maiview1.addSubview(Label1)
                Label1.layer.cornerRadius = 5
                FlyTo.layer.cornerRadius = 5
                FlyFrom.layer.cornerRadius = 5
                maiview1.layer.cornerRadius = 5
                buttonFind.layer.cornerRadius = 5
                
                buttonFind.addTarget(self, action: #selector(Goto), for: .touchUpInside)
            }
        
            
            @objc func Goto(){
                let secondVC = findPlace()
                let navigation = UINavigationController(rootViewController: secondVC)
                navigation.modalPresentationStyle = .fullScreen
                present(navigation, animated: true, completion: nil)
            }
        func setupLayout(){
            maiview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
            maiview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
            maiview.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
            maiview.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
            
            maiview1.topAnchor.constraint(equalTo: maiview.topAnchor, constant: UIScreen.main.bounds.maxY / 5).isActive = true
            maiview1.bottomAnchor.constraint(equalTo: maiview.bottomAnchor, constant: -UIScreen.main.bounds.maxY / 5).isActive = true
            maiview1.rightAnchor.constraint(equalTo: maiview.rightAnchor, constant: -20).isActive = true
            maiview1.leftAnchor.constraint(equalTo: maiview.leftAnchor, constant: 20).isActive = true
            
            
            
            FlyFrom.topAnchor.constraint(equalTo: maiview1.topAnchor, constant: 60).isActive = true
            FlyFrom.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
            FlyFrom.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
            FlyFrom.bottomAnchor.constraint(equalTo: FlyFrom.topAnchor, constant: 40).isActive = true
            
            FlyTo.topAnchor.constraint(equalTo: FlyFrom.bottomAnchor, constant: 20).isActive = true
            FlyTo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
            FlyTo.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
           FlyTo.bottomAnchor.constraint(equalTo: FlyTo.topAnchor, constant: 40).isActive = true
            
            
            
            buttonFind.bottomAnchor.constraint(equalTo: maiview1.bottomAnchor, constant: -20).isActive = true
             buttonFind.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
             buttonFind.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
            buttonFind.topAnchor.constraint(equalTo: maiview1.bottomAnchor, constant: -60).isActive = true
            
            Label1.topAnchor.constraint(equalTo: Label1.bottomAnchor, constant: -40).isActive = true
            Label1.leftAnchor.constraint(equalTo: maiview1.leftAnchor, constant: 20).isActive = true
            Label1.rightAnchor.constraint(equalTo: maiview1.rightAnchor, constant: -20).isActive = true
            Label1.bottomAnchor.constraint(equalTo: buttonFind.topAnchor, constant: -30).isActive = true
    //

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
