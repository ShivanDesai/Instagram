//
//  MainTableViewCell.swift
//  InstagramCopy
//
//  Created by Shivan Desai on 3/16/17.
//  Copyright © 2017 Shivan Desai. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    // OUTLETS
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
