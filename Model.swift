//
//  Model.swift
//  Taask
//
//  Created by Emiliyan Gospodinov on 11/29/15.
//  Copyright © 2015 Emiliyan Gospodinov. All rights reserved.
//

import Foundation
import UIKit;

class Model{
    var todos: NSMutableArray = NSMutableArray();
    
    
    
    func add(todo:String){
        todos.addObject(Item(name: todo, done: false));
    }
    
    func remove(index: Int){
        todos.removeObjectAtIndex(index);
    }
    
    init(){
        todos.addObject(Item(name:"Sample todo",done: false));
    }
}
