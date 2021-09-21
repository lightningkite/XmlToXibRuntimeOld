//
//  AppDelegate.swift
//  XmlToXibRuntimeExample
//
//  Created by Joseph Ivie on 9/15/21.
//

import UIKit
import XmlToXibRuntime

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var viewController: UIViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UIView.useLayoutSubviewsLambda()
        UIView.backgroundLayersByName = R.drawable.allEntries
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let nav = UINavigationController()
        let vc = ViewController()
        nav.viewControllers = [vc]
        self.viewController = vc
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        print("Made \(window) key and visible")
        
        return true
    }
}

