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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arrayWines = Wine.generateArray()
        
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
        
            cell.category.text = arrayWines[indexPath.row].category
            cell.categoryPhoto.image = arrayWines[indexPath.row].principalPhoto
        
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
        detail.imageNotMatchesPassed = arrayWines[indexPath.row].notMatchesImage
        detail.imageNotMatchesTextPassed = arrayWines[indexPath.row].notMatchesText
        detail.detailNotMatchesTextPassed = arrayWines[indexPath.row].notMatchesDetails
        
        navigationController?.pushViewController(detail, animated: true)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    


}

