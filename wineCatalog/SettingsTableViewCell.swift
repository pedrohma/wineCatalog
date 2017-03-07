//
//  SettingsTableViewCell.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 3/6/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var contactDeveloper: UILabel!
    @IBOutlet weak var nameDeveloper: UILabel!
    @IBOutlet weak var imgDeveloper: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
