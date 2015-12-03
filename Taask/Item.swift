//
//  Item.swift
//  Taask
//
//  Created by Emiliyan Gospodinov on 11/30/15.
//  Copyright © 2015 Emiliyan Gospodinov. All rights reserved.
//

import Foundation
class Item {
    var name: String!;
    var done: Bool!;
    
    init(name:String, done:Bool){
        self.name = name;
        self.done = done;
    }
}