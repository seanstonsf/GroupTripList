//
//  AppDelegate.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/22/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit
import AFNetworking

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var lists = [

        [ "title" : "Picnic Hawk Hill",
            "sub" : "November 26th Picnic",
            "posters" : "http://i.imgur.com/Rxm5hKb.jpg",
            "task" : ["Basket", "Food", "Blanket","Wine"],
            "profileImage" : "http://i.imgur.com/HhqW7Ci.jpg",
            "profileImage2" : "http://i.imgur.com/q7rzDjI.jpg",
            "profileImage3" :  "",
            
        ],
        [ "title" : "Alien",
            "sub" : "November 26th Picnic",
            "posters" : "http://resizing.flixster.com/w1m455J_AaUzi_Aaca2vpL2VymI=/54x80/dkpu1ddg7pbsk.cloudfront.net/movie/11/20/23/11202355_ori.jpg",
            "task" : ["Alien1", "Alien2", "Alien3", "Alien4"],
            "profileImage" : "http://i.imgur.com/f1wSezD.jpg",
            "profileImage2" : "http://i.imgur.com/q7rzDjI.jpg",
            "profileImage3" :  "http://i.imgur.com/HhqW7Ci.jpg",
        ],
        [ "title" : "Terminator",
            "sub" : "November 26th Picnic",
            "posters" : "http://resizing.flixster.com/w1m455J_AaUzi_Aaca2vpL2VymI=/54x80/dkpu1ddg7pbsk.cloudfront.net/movie/11/20/23/11202355_ori.jpg",
            "task" : ["Terminator1", "Terminator2"],
            "profileImage" : "http://i.imgur.com/f1wSezD.jpg",
            "profileImage2" : "http://i.imgur.com/q7rzDjI.jpg",
            "profileImage3" :  "http://i.imgur.com/HhqW7Ci.jpg",
            
        ],
    ]
    
    var selectedListItem: Int? = nil

    
    
    static func shareAppDelegate() -> AppDelegate {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        return appDelegate
    }
    
    
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

