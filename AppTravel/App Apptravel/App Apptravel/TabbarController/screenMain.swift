//
//  screenMain.swift
//  App Apptravel
//
//  Created by Huy on 3/7/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class screenMain: UITableViewController {
    var viewcontroller1 : screenHome?
    var viewcontroller2 : screenFly?
    var viewcontroller3 : screenSet?
    var viewcontroller4 : screenMe?
    var subViewControllers : [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .brown
         viewcontroller1 = screenHome()
         viewcontroller2 = screenFly()
         viewcontroller3 = screenSet()
         viewcontroller4 = screenMe()
        
        subViewControllers.append(viewcontroller1!)
        subViewControllers.append(viewcontroller2!)
        subViewControllers.append(viewcontroller3!)
        subViewControllers.append(viewcontroller4!)
        
        viewcontroller1?.tabBarItem = UITabBarItem(title: "Phòng", image: UIImage(named: "phongmau"), selectedImage: UIImage(named: "phong"))
        viewcontroller1?.tabBarItem.tag = 0
        
        viewcontroller2?.tabBarItem = UITabBarItem(title: "Chuyến bay", image: UIImage(named: "baymau"), selectedImage: UIImage(named: "bay"))
               viewcontroller2?.tabBarItem.tag = 1
        
        viewcontroller3?.tabBarItem = UITabBarItem(title: "Đơn đặt", image: UIImage(named: "dat"), selectedImage: UIImage(named: "dat"))
               viewcontroller3?.tabBarItem.tag = 2
        
        viewcontroller4?.tabBarItem = UITabBarItem(title: "Tôi", image: UIImage(named: "toimau"), selectedImage: UIImage(named: "toi"))
               viewcontroller4?.tabBarItem.tag = 3
        
        
//        self.setViewController(subViewControllers, animated : true )
//        self.selectIndex = 0
//        self.selectedController =
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
