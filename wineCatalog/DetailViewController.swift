//
//  DetailViewController.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 2/15/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var wineImage: UIImageView!
    
    @IBOutlet weak var wineNameLbl: UILabel!
    
    var theImagePassed : UIImage?
    
    var nameWine : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        wineNameLbl.text = nameWine
        
        wineImage.image = theImagePassed

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
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
