//
//  Home.swift
//  book
//
//  Created by Huy on 2/21/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Home: UIViewController {
    let mainView1 : UIView = {
        let mainView1 = UIView()
        mainView1.translatesAutoresizingMaskIntoConstraints = false
        mainView1.backgroundColor = .white
        return mainView1
    }()
    let mainView2 : UIView = {
        let mainView2 = UIView()
        mainView2.translatesAutoresizingMaskIntoConstraints = false
        mainView2.backgroundColor = #colorLiteral(red: 0.9345577182, green: 1, blue: 0.9705419721, alpha: 1)
        return mainView2
    }()
    let Fly : UITextField = {
        let Fly = UITextField()
        Fly.translatesAutoresizingMaskIntoConstraints = false
        
        Fly.backgroundColor = #colorLiteral(red: 0.7295539816, green: 0.7833326426, blue: 0.7614232566, alpha: 1)
        Fly.placeholder = "✈︎ Bay tu"
        return Fly
    }()
    let FlyCome : UITextField = {
        let FlyCome = UITextField()
        FlyCome.translatesAutoresizingMaskIntoConstraints = false
        FlyCome.placeholder = "🔍 Bay den"
        FlyCome.backgroundColor = #colorLiteral(red: 0.7295539816, green: 0.7833326426, blue: 0.7614232566, alpha: 1)
        return FlyCome
    }()
    
    var buttonFly : UIButton = {
        let buttonFly = UIButton()
        buttonFly.translatesAutoresizingMaskIntoConstraints = false
        buttonFly.setTitle("Tim chuyen bay", for: .normal)
        return buttonFly
        
    }()
    var buttonFly1 : UIButton = {
           let buttonFly1 = UIButton()
           buttonFly1.translatesAutoresizingMaskIntoConstraints = false
           buttonFly1.setTitle("Tim chuyen bay", for: .normal)
           return buttonFly1
           
       }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func setupAdd(){
        view.addSubview(mainView1)
        view.addSubview(mainView2)
        
        mainView2.addSubview(mainView2)
        mainView2.addSubview(Fly)
        mainView2.addSubview(FlyCome)
        mainView2.addSubview(buttonFly)
    }
    func setupLayout(){
        mainView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        mainView1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        mainView1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
//        mainView2.topAnchor.constraint((equalTo: view.topAnchor, constant: 50).isa
//        mainView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//        mainView2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        mainView2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
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
