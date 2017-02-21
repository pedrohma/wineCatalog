//
//  MatchesViewCell.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 2/17/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class MatchesViewCell: UITableViewCell {

    @IBOutlet weak var matchesTxt: UILabel!
    
    @IBOutlet weak var imagemMatches: UIImageView!
    
    @IBOutlet weak var detailsMatches: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
