//
//  AppDelegate.swift
//  tabbar 2 ex2
//
//  Created by INDIA on 19/09/1940 Saka.
//  Copyright © 1940 INDIA. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let tabbarcontroller = storyboard.instantiateViewController(withIdentifier: "tabbar") as! UITabBarController
        
        for navgation in tabbarcontroller.viewControllers!
        {
            let navi = navgation as! UINavigationController
         //   navi.navigationBar.tintColor = UIColor.red
            navi.navigationBar.isHidden = true
            
            let controller = navi.viewControllers[0] as! UIViewController
            
            if controller.isKind(of: ViewController.self)
            {
                let img = #imageLiteral(resourceName: "aaaa").withRenderingMode(.alwaysOriginal)
                
                navi.tabBarItem.image = img
                navi.tabBarItem.title = "VLC"
            }else if
                controller.isKind(of: firstViewController.self)
            {
                navi.tabBarItem.image = #imageLiteral(resourceName: "bbbb")
                navi.tabBarItem.title = "Download"
            }
            else
            {
                navi.tabBarItem.image = #imageLiteral(resourceName: "cccc")
                navi.tabBarItem.title = "Folder"
            }
            
        
        }
        tabbarcontroller.selectedIndex = 0
      //  tabbarcontroller.tabBar.tintColor = UIColor.orange
      //  tabbarcontroller.tabBar.barTintColor = UIColor.blue
     //   tabbarcontroller.tabBar.unselectedItemTintColor = UIColor.green
        self.window?.rootViewController = tabbarcontroller
        self.window?.makeKeyAndVisible()
        
        return true
        
    }
    
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

