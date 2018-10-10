//
//  AppDelegate.swift
//  BubblePop
//
//  Created by Peter Bower on 11/4/18.
//  Copyright © 2018 Peter Bower. All rights reserved.
//

import Foundation
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    //setup folder directory for app data persistence
    public static let documentsDirectory: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        UIApplication.shared.statusBarStyle = .lightContent         //setup custom navigation controller colours
        UINavigationBar.appearance().barStyle = .black
        UINavigationBar.appearance().tintColor = .white
        
        MusicPlayer.sharedPlayer.playBackgroundMusic()              //plays game music
        
        return true
    }
    
}

