//
//  AppDelegate.swift
//  StackOverflowViper
//
//  Created by Moral on 17/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let routing = Routing()
        
        self.window = UIWindow()
        let screen: UIScreen = UIScreen.mainScreen()
        
        self.window!.frame = screen.bounds
        self.window!.rootViewController = routing.navigationController
        self.window!.makeKeyAndVisible()
        
        return true
    }



}

