//
//  TableViewCell.swift
//  Taask
//
//  Created by Emiliyan Gospodinov on 11/29/15.
//  Copyright © 2015 Emiliyan Gospodinov. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var toDoName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
