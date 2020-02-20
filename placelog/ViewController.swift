//
//  ViewController.swift
//  placelog
//
//  Created by USER on 2020/02/20.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    
    let myItem :NSArray = ["text1","text2","text3"]
    
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate =  self
        tableview.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath as IndexPath)
        cell.textLabel?.text = ""
        return cell
    }

}

