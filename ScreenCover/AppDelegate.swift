//
//  AppDelegate.swift
//  ScreenCover
//
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coverWindow: UIWindow?

    @objc func dismissCoverWindow() {
        coverWindow?.resignKey()
        coverWindow = nil
        window?.makeKeyAndVisible()
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        if self.coverWindow != nil {
            // Skip since cover window is already showing
            return
        }
        let vc = UIViewController()
        let label = UILabel(frame: window!.bounds)
        label.text = "CoverWindow. Tap to app see contents"
        label.isUserInteractionEnabled = true
        vc.view = label
        vc.view.backgroundColor = UIColor.lightGray
        vc.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissCoverWindow)))

        let coverWindow = UIWindow(frame: window!.bounds)
        coverWindow.rootViewController = vc
        coverWindow.windowLevel = .alert
        coverWindow.makeKeyAndVisible()
        self.coverWindow = coverWindow
    }

}

