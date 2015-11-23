//
//  ViewController.swift
//  Orpheus
//
//  Created by Jabari Bell on 11/23/15.
//
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {
    
    let tableView: UITableView = UITableView()
    let users = ["Dan", "Mary", "Yanik", "Jabari", "Sarah", "Wyatt"]
    
    let CellIdentifier = "CellIdentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(tableView)
        tableView.frame = view.frame
        tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: CellIdentifier)
        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return users.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier)
        cell?.textLabel?.text = users[indexPath.row]
        return cell!
    }

}

