//
//  NavControllerViewController.swift
//  Taask
//
//  Created by Emiliyan Gospodinov on 11/30/15.
//  Copyright © 2015 Emiliyan Gospodinov. All rights reserved.
//

import UIKit

class NavController: UINavigationController {
    
    var model:Model!;

    override func viewDidLoad() {
        super.viewDidLoad()
        model = Model();
     

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
