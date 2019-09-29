//
//  Items.swift
//  Homeowner
//
//  Created by Marzieh on 2019-09-27.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class Item: NSObject {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: Date


init(name: String, serialNumber: String?, valueInDollars: Int) {
    self.name = name // self is there to distinguish between the argument names and property names (they are the same)
    self.valueInDollars = valueInDollars
    self.serialNumber = serialNumber
    self.dateCreated = Date ()
    
    super.init() //  once all the properties have a value, a designated inilalizer calls a designated initilaizer on its superclass (if it has one)
    }
    
    //convenience initializers are optional. A convinience initializer always calls anothr initializer on the same class.
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count)) // this function returns a random value btw 0, inclusive, and the value passed in as the argument, exclusive.
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID ().uuidString.components(separatedBy: "-").first!
            
            self.init(name:randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        
        } else {
            
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
}

