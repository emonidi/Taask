//
//  AddToDoControllerViewController.swift
//  Taask
//
//  Created by Emiliyan Gospodinov on 11/29/15.
//  Copyright © 2015 Emiliyan Gospodinov. All rights reserved.
//

import UIKit

class AddToDoController: UIViewController {
    
    
    @IBOutlet var tvTodo: UITextView!
    
    var nav:NavController!;

    override func viewDidLoad() {
        super.viewDidLoad();
        nav = self.navigationController as! NavController;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func AddButtonClick(sender: UIButton) {
        nav.model.add(tvTodo.text)
        nav.popViewControllerAnimated(true);
        dismissViewControllerAnimated(true, completion: nil);
    }

    
}
