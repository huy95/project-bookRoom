//
//  findPlace.swift
//  3.1
//
//  Created by Huy on 2/25/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class findPlace: UIViewController {
    let maiview : UIView = {
           let mainview = UIView()
           mainview.translatesAutoresizingMaskIntoConstraints = false
           mainview.backgroundColor = .white
           return mainview
       }()
    let mainViewup : UIView = {
        let mainview = UIView()
        mainview.translatesAutoresizingMaskIntoConstraints = false
        mainview.backgroundColor = UIColor.init(named: "mau-xanh-nhe")
        return mainview
    }()
    let buttonReturn : UIButton = {
        let buttonFind = UIButton()
        buttonFind.translatesAutoresizingMaskIntoConstraints = false
        buttonFind.setImage(UIImage(named: "left"), for: .normal)
        buttonFind.contentHorizontalAlignment = .center
//        buttonFind.backgroundColor = UIColor.init(named: "mau-xanh-nhe")
        return buttonFind
    }()
    let Label1 : UILabel = {
           let Label1 = UILabel()
           Label1.translatesAutoresizingMaskIntoConstraints = false
           Label1.text = "HN đến SG"
        Label1.textColor = .white
        Label1.textAlignment = .left
        Label1.font = .boldSystemFont(ofSize: 18)
//           Label1.backgroundColor = UIColor.init(named: "mau-xamdam")
           return Label1
       }()
    let Label2 : UILabel = {
             let Label1 = UILabel()
             Label1.translatesAutoresizingMaskIntoConstraints = false
             Label1.text = "26 thang 12 | 1 hành khách | phổ thông"
          Label1.textColor = .white
          Label1.textAlignment = .left
          Label1.font = .boldSystemFont(ofSize: 14)
//             Label1.backgroundColor = UIColor.init(named: "mau-xamdam")
             return Label1
         }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
