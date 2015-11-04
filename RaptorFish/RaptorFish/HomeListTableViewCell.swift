//
//  HomeListTableViewCell.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/27/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class HomeListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var homeListCellTitleLabel: UILabel!
    @IBOutlet weak var homeListCellSubTitleLabel: UILabel!
    @IBOutlet weak var homeListCellBackgroundImageView: UIImageView!
    @IBOutlet weak var homeListCellLocationImageView: UIImageView!
    @IBOutlet weak var homeListCellMember1ImageView: UIImageView!
    @IBOutlet weak var homeListCellMember2ImageView: UIImageView!
    @IBOutlet weak var homeListCellMember3ImageView: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}