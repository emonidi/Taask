//
//  ViewController.swift
//  Taask
//
//  Created by Emiliyan Gospodinov on 11/29/15.
//  Copyright © 2015 Emiliyan Gospodinov. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
   
    @IBOutlet var PlusButton: UIBarButtonItem!
    @IBOutlet var navItem: UINavigationItem!
    var nav:NavController!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nav = navigationController as! NavController;
        var plusImage = UIImage(named: "plus2x.png");
        plusImage = plusImage?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        self.navigationController?.navigationItem.rightBarButtonItem?.image = plusImage
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
            }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData();
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(nav.model.todos.count);
        return nav.model.todos.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item:Item = nav.model.todos[indexPath.row] as! Item;
        let cell = tableView.dequeueReusableCellWithIdentifier("todo_cell") as! TableViewCell;
        cell.toDoName.text = item.name;
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.Delete{
            nav.model.remove(indexPath.row);
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left);
        }
    }
    
    


}

