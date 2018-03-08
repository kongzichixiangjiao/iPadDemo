//
//  ViewController.swift
//  iPadDemo
//
//  Created by 侯佳男 on 2018/3/8.
//  Copyright © 2018年 侯佳男. All rights reserved.
//

import UIKit

class MainViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.showDetailViewController(OneViewController(), sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension MainViewController: UISplitViewControllerDelegate {
    func splitViewController(_ splitViewController: UISplitViewController, show vc: UIViewController, sender: Any?) -> Bool {
        return true
    }
    
}
