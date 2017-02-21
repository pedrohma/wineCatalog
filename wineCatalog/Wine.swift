//
//  Wine.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 2/20/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class Wine {
    
    var category: String
    var principalPhoto: UIImage
    var countries: [String]
    var matchesImage: [UIImage]
    var matchesText: [String]
    var matchesDetails: [String]
    
    init(category: String, principalPhoto: UIImage, countries: [String], matchesImage: [UIImage], matchesText: [String], matchesDetails: [String]) {
        self.category = category
        self.principalPhoto = principalPhoto
        self.countries = countries
        self.matchesImage = matchesImage
        self.matchesText = matchesText
        self.matchesDetails = matchesDetails
    }

}
