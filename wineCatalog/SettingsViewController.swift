//
//  SettingsViewController.swift
//  wineCatalog
//
//  Created by Pedro De Miranda Arthur on 3/6/17.
//  Copyright © 2017 Pedro De Miranda Arthur. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var developers : [Developer] = []
    
    func loadDevelopers() -> [Developer]{
        let pedro = Developer(photo: UIImage(named:"pedro")!, name: "Pedro Henrique de Miranda Arthur", details: "pedrohma95@gmail.com")
        let joao = Developer(photo: UIImage(named:"joao")!, name: "João Henrique Arruda", details: "jojoba@teste.com")
        
        developers.append(pedro)
        developers.append(joao)
        
        return developers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        developers = loadDevelopers()
        
        tableView.delegate = self
        tableView.dataSource = self

        tableView.allowsSelection = false;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return developers.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "settingsTableViewCell", for: indexPath) as! DeveloperViewCell
        
        cell.imgDeveloper.image = developers[indexPath.row].photo
        cell.developerName.text = developers[indexPath.row].name
        cell.detailsDeveloper.text = developers[indexPath.row].details
        
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
