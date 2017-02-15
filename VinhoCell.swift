//
//  VinhoCell.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 2/14/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class VinhoCell: UITableViewCell {

    @IBOutlet weak var wineCategory: UILabel!
    @IBOutlet weak var winePhoto: UIImageView!
    
    var categoria = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.wineCategory.text = categoria
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
