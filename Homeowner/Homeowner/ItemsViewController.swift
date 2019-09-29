//
//  ItemsViewController.swift
//  Homeowner
//
//  Created by Marzieh on 2019-09-27.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Get height of the status bar
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    
    
    var itemStore: ItemStore!
    
    override func tableView(_ tableView:UITableView, numberOfRowsInSection section : Int) ->
        Int {
            return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create an instance of UITableViewCell, with default appearance
       //let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        //Get a new or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for : indexPath)
        
        //set the text on the cell with the description of the item
        // that is the nth index of items, where n = row this cell
        //will appear in on the tableView
        
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
        
        
        
    }
    
}
