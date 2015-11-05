//
//  TasksTableViewCell.swift
//  RaptorFish
//
//  Created by Randy on 11/3/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class TasksTableViewCell: UITableViewCell {

    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var statusImageView: UIImageView!
    
    var originalCenter = CGPoint()
    var deleteOnDragRelease = true
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//                statusImageView.alpha = 0
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        // Configure the view for the selected state
    }
    
    
    @IBAction func taskCellButtonPressed(sender: AnyObject) {
//                statusImageView.alpha = 1
        
        if statusImageView.alpha == 0 {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.statusImageView.alpha = 1
            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.statusImageView.alpha = 0
            })
        }

        
    }


}
