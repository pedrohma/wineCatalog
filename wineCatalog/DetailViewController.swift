//
//  DetailViewController.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 2/15/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var wineImage: UIImageView!
    
    @IBOutlet weak var wineNameLbl: UILabel!
    
    @IBOutlet weak var countryFlag: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    // essa é a table view do Matches
    @IBOutlet weak var pageControl: UIPageControl!
    
    var timer : Timer!
    var updateCounter : Int!
    
    var nameWine : String?
    
    var countryPassed : [String]?
    
    var wineImagePassed : UIImage?
    
    var imageMatchesPassed : [UIImage?] = []
    
    var countryFinal : String?
    
    var imageMatchesTextPassed : [String]?
    
    var detailMatchesTextPassed : [String]?
    
    var teste : [UIImage] = [UIImage(named: "chardonnay")!, UIImage(named: "pinotnoir")!, UIImage(named: "tannat")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false;
        
        updateCounter = 0
        
        self.navigationItem.title = nameWine
        
        let joiner = ""
        let elements = countryPassed
        let joinedStrings = elements?.joined(separator: joiner)
        
        let base: UInt32 = 127397
        
        if(countryFinal != ""){
            countryFinal = joinedStrings?.unicodeScalars.flatMap { String.init(UnicodeScalar(base + $0.value)!) }.joined()
        }
        else{
            countryFinal = "🌐"
        }
        
        wineNameLbl.text = nameWine
        
        countryFlag.text = countryFinal
        
        wineImage.image = teste[updateCounter]
        
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(DetailViewController.updateTimer), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
    }
    
    internal func updateTimer(){
        if(updateCounter <= 2){
            pageControl.currentPage = updateCounter
            wineImage.image = teste[updateCounter]
            updateCounter = updateCounter + 1
        }
        else{
            updateCounter = 0;
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
       super.viewDidAppear(animated)
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageMatchesPassed.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "wineMatchesDetails", for: indexPath) as! MatchesViewCell
        
        cell.imagemMatches.image = imageMatchesPassed[indexPath.row]
        cell.matchesTxt.text = imageMatchesTextPassed?[indexPath.row]
        cell.detailsMatches.text = detailMatchesTextPassed?[indexPath.row]
        
        return cell
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

