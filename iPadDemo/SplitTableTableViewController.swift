//
//  SplitTableTableViewController.swift
//  iPadDemo
//
//  Created by 侯佳男 on 2018/3/8.
//  Copyright © 2018年 侯佳男. All rights reserved.
//

import UIKit

class SplitTableTableViewController: UITableViewController {

    var data = ["学习列表", "项目列表", "语言列表", "颜色列表"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: SplitTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: SplitTableViewCell.identifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SplitTableViewCell.identifier, for: indexPath) as! SplitTableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let nav = NavigationViewController(rootViewController: OneViewController())
            navigationController?.splitViewController?.showDetailViewController(nav, sender: self)
            break
        case 1:
            navigationController?.splitViewController?.showDetailViewController(TwoViewController(), sender: self)
            break
        case 2:
            navigationController?.pushViewController(OneViewController(), animated: true)
            break
        case 3:
            break 
        default:
            break
        }
    }
}
