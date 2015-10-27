//
//  TemplatePreviewTableViewCell.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/26/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class TemplatePreviewTableViewCell: UITableViewCell {

    
    @IBOutlet weak var previewBackgroundImageView: UIImageView!
    @IBOutlet weak var previewLocationThumbImageView: UIImageView!
    @IBOutlet weak var previewTitleLabel: UILabel!
    @IBOutlet weak var previewAuthorNameLabel: UILabel!
    @IBOutlet weak var previewItemCountLabel: UILabel!
    @IBOutlet weak var previewCategoryLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
