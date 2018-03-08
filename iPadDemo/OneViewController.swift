//
//  OneViewController.swift
//  iPadDemo
//
//  Created by 侯佳男 on 2018/3/8.
//  Copyright © 2018年 侯佳男. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data = ["学习列表", "项目列表", "语言列表", "颜色列表"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        tableView.register(UINib(nibName: SplitTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: SplitTableViewCell.identifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension OneViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SplitTableViewCell.identifier, for: indexPath) as! SplitTableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            navigationController?.pushViewController(TwoViewController(), animated: true)
            break
        case 1:
            break
        case 2:
            let two = TwoViewController()
            two.modalPresentationStyle = .popover
            two.preferredContentSize = CGSize(width: 320, height: 250)
            let popVC = two.popoverPresentationController
            popVC?.sourceView = self.view
            popVC?.sourceRect = CGRect(x: self.view.frame.width / 2, y:self.view.frame.height / 2, width: 50, height: 50)
            popVC?.delegate = self
            present(two, animated: true, completion: nil)
            break
        case 3:
            let alert = UIAlertController(title: "demo", message: "alert demo", preferredStyle: .alert)
            let action = UIAlertAction(title: "确定", style: .default, handler: { (action) in
                print("确定")
            })
            alert.addAction(action)
            print(UIDevice.current.model)
//            if (UIDevice.current.model)
            let pop = alert.popoverPresentationController
            pop?.sourceView = self.view
            pop?.sourceRect = CGRect(x: 100, y: 100, width: 20, height: 20)
            pop?.delegate = self
            present(alert, animated: true, completion: nil)
            break
        default:
            break
        }
    }
}
extension OneViewController: UIPopoverPresentationControllerDelegate {
//    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
//        return true
//    }
    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
        print("dismiss")
    }
}
