//
//  LeftViewController.swift
//  iPadDemo
//
//  Created by 侯佳男 on 2018/3/14.
//  Copyright © 2018年 侯佳男. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func one(_ sender: Any) {
        print("2")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "push"), object: 1);
    }
    
    @IBAction func two(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "push"), object: 2);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
