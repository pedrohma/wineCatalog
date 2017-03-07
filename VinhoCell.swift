//
//  VinhoCell.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 2/14/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class VinhoCell: UITableViewCell {

    @IBOutlet weak var categoryPhoto: UIImageView!
    @IBOutlet weak var category: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
