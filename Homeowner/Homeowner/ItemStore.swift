//
//  ItemStore.swift
//  Homeowner
//
//  Created by Marzieh on 2019-09-27.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class ItemStore { // this is a Swift base class that doesn't inherit from any other class.
    var allItems = [Item] ()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }

    init () { //adding 5 random items if discardableResult was not implemented, then it should've been lt+ = createItem()
        for _ in 0..<5 {
            createItem()
        }
    }
}
