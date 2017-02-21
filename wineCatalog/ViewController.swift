//
//  ViewController.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 2/14/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    @IBOutlet weak var tableView: UITableView!
    
    var arrayWines : [Wine] = []
    
    func allWines() -> [Wine] {
        
        let carbenet = Wine(category: "Cabernet Sauvignon", principalPhoto: UIImage(named: "cabernet")!, countries: ["FR"], matchesImage: [UIImage(named: "steak")!, UIImage(named: "cheese")!,UIImage(named: "roasted-eggplant")!, UIImage(named: "lentils")!, UIImage(named: "lamb-steak")!, UIImage(named: "mint")!, UIImage(named: "mustard")!, UIImage(named: "potato")!, UIImage(named: "pasta-dishes")!], matchesText: ["Steak", "Cheese", "Roasted Eggplant", "Lentils", "Lamb Steak", "Mint", "Mustard", "Potato", "Pasta Dishes"], matchesDetails: ["Especially Grilled, Roasted or Stewed", "Especially aromatic ones like Roquefort, Blue and Camembert varietals", "", "", "Especially roasted or Rack of Lamb", "", "", "", "Especially with Cream Sauces"])
        
        let malbec = Wine(category: "Malbec", principalPhoto: UIImage(named: "malbec")!, countries: ["FR"], matchesImage: [UIImage(named: "steak")!, UIImage(named: "pasta-dishes")!, UIImage(named: "lamb-steak")!, UIImage(named: "cheese")!, UIImage(named: "chocolate")!], matchesText: ["Steak", "Pasta Dishes", "Lamb Steak", "Cheese", "Chocolate"], matchesDetails: ["Made British/American-style rather than a classic Italian ragu", "It particularly suits smokey, Chilli-based Rubs", "Barring lighter cheeses like Goats cheese and stinkier ones like Epoisses", "Works well with a Dark Chocolate"])
        
        let merlot = Wine(category: "Merlot", principalPhoto: UIImage(named: "merlot")!, countries: ["FR", "US", "CL", "AU"], matchesImage: [UIImage(named: "hamburguer")!, UIImage(named: "ribs")!, UIImage(named: "salmon")!, UIImage(named: "cheese")!, UIImage(named: "lamb-steak")!, UIImage(named: "salad")!], matchesText: ["Hamburguer", "Ribs", "Salmon", "Cheese", "Eal, Pork or Lamb", "Salad"], matchesDetails: ["The classic American BBQ meal of a big juicy Hamburger is perhaps the perfect accompaniment to Merlot", "Melt in your mouth, braised short ribs are so tender and flavorful that they pair perfectly with Merlot","", "Try softer, creamier cheeses like Camembert, Gruyere or even a smoked Cheddar (or any other smoked cheese) will be your best bet", "Especially with herbs such as Thyme, Rosemary and Oregano", "That contains Red Berry fruits and Pomegranate Seeds"])
        
        let tannat = Wine(category: "Tannat", principalPhoto: UIImage(named: "tannat")!, countries: ["UY"], matchesImage: [UIImage(named: "steak")!, UIImage(named: "chicken")!, UIImage(named: "lamb-steak")!, UIImage(named: "cheese")!], matchesText: ["Steak", "Chicken", "Lamb Steak", "Cheese"], matchesDetails: ["Grilled and Broiled", "", "", "Tannat wine charm goes with strong and well matured cheeses"])
        
        let pinot = Wine(category: "Pinot Noir", principalPhoto: UIImage(named: "pinotnoir")!, countries: ["FR", "US", "NZ", "CL", "DE", "RO", "ZA"], matchesImage: [UIImage(named: "salmon")!, UIImage(named: "steak")!, UIImage(named: "chicken")!, UIImage(named: "cheese")!], matchesText: ["Salmon", "Steak", "Chicken", "Cheese"], matchesDetails: ["", "", "", "Brie and similar cheeses, milder blue cheeses such as Gorgonzola dolce."])
        
        let chardonnay = Wine(category: "Chardonnay", principalPhoto: UIImage(named: "chardonnay")!, countries: ["🌐"], matchesImage: [UIImage(named: "chicken")!, UIImage(named: "pasta-dishes")!, UIImage(named: "salad")!], matchesText: ["Chicken", "Pasta", "Salad"], matchesDetails: ["", "Pastas in general", ""])
        
        arrayWines.append(carbenet)
        arrayWines.append(malbec)
        arrayWines.append(merlot)
        arrayWines.append(tannat)
        arrayWines.append(pinot)
        arrayWines.append(chardonnay)
        
        return arrayWines
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arrayWines = allWines()

    }
    
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if  segue.identifier == "detailViewController",
            let destination = segue.destination as? DetailViewController,
            let wineIndex = tableView.indexPathForSelectedRow?.row
        {
            destination.nameWine = arrayWines[wineIndex].category
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "vinhocell", for: indexPath) as! VinhoCell
        
        cell.winePhoto.image = arrayWines[indexPath.row].principalPhoto

        return cell
        
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail = self.storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! DetailViewController
        
        detail.wineImagePassed = arrayWines[indexPath.row].principalPhoto
        detail.nameWine = arrayWines[indexPath.row].category
        detail.countryPassed = arrayWines[indexPath.row].countries
        detail.imageMatchesPassed = arrayWines[indexPath.row].matchesImage
        detail.imageMatchesTextPassed = arrayWines[indexPath.row].matchesText
        detail.detailMatchesTextPassed = arrayWines[indexPath.row].matchesDetails
        
        
        navigationController?.pushViewController(detail, animated: true)
        
//        let testeViwControlelr = TesteViewController()
//        navigationController?.present(testeViwControlelr, animated: true, completion: nil)
        
    }


}

