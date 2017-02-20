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
    
    var types = ["Cabernet Sauvignon", "Malbec", "Merlot", "Tannat", "Pinot Noir", "Chardonnay"]
    
    var photos = [UIImage(named: "cabernet"), UIImage(named: "malbec"),UIImage(named: "merlot"),UIImage(named: "tannat"),UIImage(named: "pinotnoir"),UIImage(named: "chardonnay"),]
    
    var countries = [["FR"], ["FR"], ["FR", "US", "CL", "AU"], ["UY"], ["FR", "US", "NZ", "CL", "DE", "RO", "ZA"], ["Worldwide"]] as [[String]]
    
    var matchesImage = [[UIImage(named: "steak")!], [UIImage(named: "steak")!]] as [[UIImage]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if  segue.identifier == "detailViewController",
            let destination = segue.destination as? DetailViewController,
            let wineIndex = tableView.indexPathForSelectedRow?.row
        {
            destination.nameWine = types[wineIndex]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "vinhocell", for: indexPath) as! VinhoCell
        
        cell.winePhoto.image = photos[indexPath.row]

        return cell
        
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var arrayCountries : [String]?
        var arrayImageMatches : [UIImage]?
        
        let nome = self.types[indexPath.row]
        let photo = self.photos[indexPath.row]
        arrayCountries = self.countries[indexPath.row]
        arrayImageMatches = self.matchesImage[indexPath.row]
        
        let detail = self.storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! DetailViewController
        detail.theImagePassed = photo
        detail.nameWine = nome
        detail.countryPassed = arrayCountries
        detail.imageMatchesPassed = arrayImageMatches!
        
        navigationController?.pushViewController(detail, animated: true)
        
//        let testeViwControlelr = TesteViewController()
//        navigationController?.present(testeViwControlelr, animated: true, completion: nil)
        
    }


}

