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
    var notMatchesImage: [UIImage]
    var notMatchesText: [String]
    var notMatchesDetails: [String]
    
    init(category: String, principalPhoto: UIImage, countries: [String], matchesImage: [UIImage], matchesText: [String], matchesDetails: [String], notMatchesImage: [UIImage], notMatchesText: [String], notMatchesDetails: [String]) {
        self.category = category
        self.principalPhoto = principalPhoto
        self.countries = countries
        self.matchesImage = matchesImage
        self.matchesText = matchesText
        self.matchesDetails = matchesDetails
        self.notMatchesImage = notMatchesImage
        self.notMatchesText = notMatchesText
        self.notMatchesDetails = notMatchesDetails
    }
    
    class func generateArray() -> [Wine]{
        var arrayWines = [Wine]()
        let carbenet = Wine(category: "Cabernet Sauvignon", principalPhoto: UIImage(named: "cabernet")!, countries: ["FR"], matchesImage: [UIImage(named: "steak")!, UIImage(named: "cheese")!,UIImage(named: "roasted-eggplant")!, UIImage(named: "lentils")!, UIImage(named: "lamb-steak")!, UIImage(named: "mint")!, UIImage(named: "mustard")!, UIImage(named: "potato")!, UIImage(named: "pasta-dishes")!], matchesText: ["Steak", "Cheese", "Roasted Eggplant", "Lentils", "Lamb Steak", "Mint", "Mustard", "Potato", "Pasta Dishes"], matchesDetails: ["Especially Grilled, Roasted or Stewed", "Especially aromatic ones like Roquefort, Blue and Camembert varietals", "", "", "Especially roasted or Rack of Lamb", "", "", "", "Especially with Cream Sauces"], notMatchesImage: [UIImage(named: "salmon")!, UIImage(named: "shrimp")!, UIImage(named: "oysters")!, UIImage(named: "pepper")!], notMatchesText: ["Salmon", "Shrimp", "Oysters", "Chilly"], notMatchesDetails: ["It's not recommend with any kind of sushi", "", "", "It's not recommended with spicy dishes"])
        
        let malbec = Wine(category: "Malbec", principalPhoto: UIImage(named: "malbec")!, countries: ["FR"], matchesImage: [UIImage(named: "steak")!, UIImage(named: "pasta-dishes")!, UIImage(named: "lamb-steak")!, UIImage(named: "cheese")!, UIImage(named: "chocolate")!], matchesText: ["Steak", "Pasta Dishes", "Lamb Steak", "Cheese", "Chocolate"], matchesDetails: ["", "Made British/American-style rather than a classic Italian ragu", "It particularly suits smokey, Chilli-based Rubs", "Barring lighter cheeses like Goats cheese and stinkier ones like Epoisses", "Works well with a Dark Chocolate"], notMatchesImage: [UIImage(named: "creamsauce")!], notMatchesText: ["Cream Sauce"], notMatchesDetails: ["Avoid pairing Malbec with heavy cream sauces"])
        
        let merlot = Wine(category: "Merlot", principalPhoto: UIImage(named: "merlot")!, countries: ["FR", "US", "CL", "AU"], matchesImage: [UIImage(named: "hamburguer")!, UIImage(named: "ribs")!, UIImage(named: "salmon")!, UIImage(named: "cheese")!, UIImage(named: "lamb-steak")!, UIImage(named: "salad")!], matchesText: ["Hamburguer", "Ribs", "Salmon", "Cheese", "Eal, Pork or Lamb", "Salad"], matchesDetails: ["The classic American BBQ meal of a big juicy Hamburger is perhaps the perfect accompaniment to Merlot", "Melt in your mouth, braised short ribs are so tender and flavorful that they pair perfectly with Merlot","", "Try softer, creamier cheeses like Camembert, Gruyere or even a smoked Cheddar (or any other smoked cheese) will be your best bet", "Especially with herbs such as Thyme, Rosemary and Oregano", "That contains Red Berry fruits and Pomegranate Seeds"], notMatchesImage: [UIImage(named: "vegetable")!, UIImage(named: "fishes")!, UIImage(named: "pasta-dishes")!, UIImage(named: "chicken")!, UIImage(named: "creamsauce")!, UIImage(named: "chocolate")!], notMatchesText: ["Vegetable", "Fishes", "Pasta", "Chicken", "Sharp Sauces", "Chocolate"], notMatchesDetails: ["", "", "", "", "Containing lemon juice (makes Merlot taste too sweet and jammy)", "A controversial view as I know a number of my colleagues argue that it works..."])
        
        let tannat = Wine(category: "Tannat", principalPhoto: UIImage(named: "tannat")!, countries: ["UY"], matchesImage: [UIImage(named: "steak")!, UIImage(named: "chicken")!, UIImage(named: "lamb-steak")!, UIImage(named: "cheese")!], matchesText: ["Steak", "Chicken", "Lamb Steak", "Cheese"], matchesDetails: ["Grilled and Broiled", "", "", "Tannat wine charm goes with strong and well matured cheeses"], notMatchesImage: [UIImage(named: "maintenance")!], notMatchesText: [String("We are sorry!")], notMatchesDetails: [String("No information provided yet... Wait for the next updates!")])
        
        let pinot = Wine(category: "Pinot Noir", principalPhoto: UIImage(named: "pinotnoir")!, countries: ["FR", "US", "NZ", "CL", "DE", "RO", "ZA"], matchesImage: [UIImage(named: "salmon")!, UIImage(named: "steak")!, UIImage(named: "chicken")!, UIImage(named: "cheese")!], matchesText: ["Salmon", "Steak", "Chicken", "Cheese"], matchesDetails: ["", "", "", "Brie and similar cheeses, milder blue cheeses such as Gorgonzola dolce"], notMatchesImage: [UIImage(named: "pepper")!, UIImage(named: "salt")!], notMatchesText: ["Pepper", "Salt"], notMatchesDetails: ["Try to avoid spicy Mexican dishes", "Like all reds Pinot hates salt and the lack of balance in the dish"])
        
        let chardonnay = Wine(category: "Chardonnay", principalPhoto: UIImage(named: "chardonnay")!, countries: ["All"], matchesImage: [UIImage(named: "chicken")!, UIImage(named: "pasta-dishes")!, UIImage(named: "salad")!], matchesText: ["Chicken", "Pasta", "Salad"], matchesDetails: ["", "Pastas in general", ""], notMatchesImage: [UIImage(named: "fishes")!, UIImage(named: "steak")!, UIImage(named: "cheese")!, UIImage(named: "salmon")!, UIImage(named: "tomato")!], notMatchesText: ["Fishes", "Steak", "Cheese", "Salmon", "Tomatoes"], notMatchesDetails: ["Not good as smoked fishes", "Not good as smoked steak", "Light fresh cheeses such as goat or sheeps cheeses", "", ""])
        
        arrayWines.append(carbenet)
        arrayWines.append(merlot)
        arrayWines.append(tannat)
        arrayWines.append(malbec)
        arrayWines.append(pinot)
        arrayWines.append(chardonnay)
        
        return arrayWines
    }

}
