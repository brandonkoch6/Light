//
//  AppDelegate.swift
//  Light
//
//  Created by Brandon Koch on 1/10/17.
//  Copyright © 2017 Brandon Koch. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var light: UIImageView?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // A window is a view, a container for a single view
        window = UIWindow()
        window?.rootViewController = ViewController()
        window?.rootViewController?.view.backgroundColor = UIColor.brown
        window?.makeKeyAndVisible()
        
        light = UIImageView()
        light?.frame = CGRect(x: 20.0, y: 20.0, width: 300.0, height: 350.0)
        light?.backgroundColor = UIColor.red
        light?.image = UIImage(named:"light_off")
        window?.rootViewController?.view.addSubview(light!)
        
        // Because the switch was added later, it will be on top of the light
        let lightSwitch: UISwitch = UISwitch()
        lightSwitch.frame = CGRect(x: 50.0, y: 300.0, width: 200.0, height: 200.0)
        lightSwitch.addTarget(self, action: "buttonPressed", for: UIControlEvents.touchUpInside)
        window?.rootViewController?.view.addSubview(lightSwitch)
        
        NSLog("Hello World")
        
        return true
    }
    
    func buttonPressed()
    {
        // Change the image of the light
        if (light?.image == #imageLiteral(resourceName: "light_off"))
        {
            light?.image = UIImage(named: "light_on")
        }
        else
        {
           light?.image = UIImage(named: "light_off")
        }
        
        
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

