//
//  ViewController.swift
//  ScreenCover
//
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: view.bounds)
        label.text = "App contents here. \nUser should NOT be able to see this when app is in background"
        label.numberOfLines = 0
        label.frame = CGRect(x: 44, y: 100, width: 280, height: 100)
        view.addSubview(label)
    }
}

