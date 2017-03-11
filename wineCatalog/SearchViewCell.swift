//
//  SearchViewCell.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 3/9/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class SearchViewCell: UITableViewCell {

    @IBOutlet weak var wineTitleLbl: UILabel!
    
    @IBOutlet weak var matchesDetailsLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
