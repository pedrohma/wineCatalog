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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        cell.wineCategory.text = types[indexPath.row]

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let nome = self.types[indexPath.row]
       // let photo = photos[indexPath.row]
        
        let detail = storyboard?.instantiateViewController(withIdentifier: "winedetail") as! DetailViewController
        //detail.wineImage = photo?.images[indexPath.row]
        detail.wineNameLbl.text = nome
        navigationController?.pushViewController(detail, animated: true)
        
    }


}

