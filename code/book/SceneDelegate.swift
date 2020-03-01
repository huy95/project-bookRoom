//
//  SceneDelegate.swift
//  book
//
//  Created by Huy on 2/21/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = setupTablebarController()
        window?.makeKeyAndVisible()
    }
    func setupTablebarController() -> UITabBarController{
        let tabBC = UITabBarController()
        let screen1 = Home()
//        let navigation1 = UINavigationController(rootViewController: screen1)
//        screen1.view.backgroundColor = UIColor.blue
        screen1.tabBarItem = UITabBarItem(title: "Phong", image: UIImage(named: "contacts-gray"), tag: 0)
//        navigation1.tabBarItem.badgeValue = "4"
        
        let screen2 = Fly()
//        screen2.view.backgroundColor = UIColor.cyan
        screen2.tabBarItem = UITabBarItem(title: "chuyến bay", image: UIImage(named: "watch-gray"), selectedImage: UIImage(named: "watch-blue"))
        
        let screen3 = order()
        let screen5 = order()
//        screen3.view.backgroundColor = UIColor.cyan
        screen3.tabBarItem = UITabBarItem(title: "đơn đặt", image: UIImage(named: "people-gray"), selectedImage: UIImage(named: "people-blue"))
        screen5.tabBarItem = UITabBarItem(title: "đơn đặt", image: UIImage(named: "people-gray"), selectedImage: UIImage(named: "people-blue"))
        let screen4 = user()
//        screen4.view.backgroundColor = UIColor.cyan
        screen4.tabBarItem = UITabBarItem(title: "Toi", image: UIImage(named: "contacts-gray"), selectedImage: UIImage(named: "contacts-blue"))
        tabBC.setViewControllers([screen1, screen2, screen3, screen4], animated: true)
        return tabBC
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

