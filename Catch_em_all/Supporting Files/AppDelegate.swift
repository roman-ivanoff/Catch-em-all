//
//  AppDelegate.swift
//  Catch’em all
//
//  Created by Roman Ivanov on 20.01.2023.
//

import UIKit
import Hero

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let rootViewController = ViewController()
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.isHeroEnabled = true
        window.rootViewController = navController
        window.makeKeyAndVisible()
        self.window = window

        return true
    }

}
