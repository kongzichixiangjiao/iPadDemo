//
//  RightViewController.swift
//  iPadDemo
//
//  Created by 侯佳男 on 2018/3/14.
//  Copyright © 2018年 侯佳男. All rights reserved.
//

import UIKit

class RightViewController: UIViewController {

    var vcs: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let v1 = UIViewController()
//        v1.view.backgroundColor = UIColor.red
//        self.addChildViewController(v1)
//
//        let v2 = UIViewController()
//        v2.view.backgroundColor = UIColor.orange
//        self.addChildViewController(v2)
//        vcs.append(v1)
//        vcs.append(v2)
        print(self.childViewControllers)
        vcs = self.childViewControllers
        NotificationCenter.default.addObserver(self, selector: #selector(push(sender:)), name: NSNotification.Name(rawValue: "push"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @objc func push(sender: NSNotification) {
        print(sender.object)
        transition(to: sender.object as! Int)
    }
    
    private func transition(to: Int) {
        let newController = vcs[to - 1]
        let oldController = self.childViewControllers.last!
        
        oldController.willMove(toParentViewController: nil)
        addChildViewController(newController)
        newController.view.frame = oldController.view.frame
        
        transition(from: oldController, to: newController, duration: 0.2, options: UIViewAnimationOptions.transitionCrossDissolve, animations: nil, completion: { (finished) -> Void in
//            oldController.removeFromParentViewController()
            newController.didMove(toParentViewController: self)
        })
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print(self.parent)
        print(self.parent?.parent)
        let nav = self.parent?.parent as! UINavigationController
        nav.pushViewController(TwoViewController(), animated: true)
    }
}
