//
//  UnmatchTableViewCell.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 2/27/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class UnmatchTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var imgUnmatch: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        detail.lineBreakMode = NSLineBreakMode.byWordWrapping
        detail.numberOfLines = 3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
