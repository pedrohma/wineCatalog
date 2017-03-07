//
//  DeveloperViewCell.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 3/6/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class DeveloperViewCell: UITableViewCell {

    @IBOutlet weak var detailsDeveloper: UILabel!
    @IBOutlet weak var developerName: UILabel!
    @IBOutlet weak var imgDeveloper: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        developerName.lineBreakMode = NSLineBreakMode.byWordWrapping
        developerName.numberOfLines = 3
        
        detailsDeveloper.lineBreakMode = NSLineBreakMode.byWordWrapping
        detailsDeveloper.numberOfLines = 3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
