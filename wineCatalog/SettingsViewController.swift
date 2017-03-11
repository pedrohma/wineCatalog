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
    @IBOutlet weak var nameForm: UITextField!
    @IBOutlet weak var messageForm: UITextField!
    @IBOutlet weak var emailForm: UITextField!
    
    var developers : [Developer] = []
    var timer: Timer!
    var countdown: Int = 0
    
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
    
    func loadDevelopers() -> [Developer]{
        let pedro = Developer(photo: UIImage(named:"developer")!, name: "Pedro Henrique de Miranda Arthur", details: "pedrohma95@gmail.com")
        
        developers.append(pedro)
        
        return developers
    }

    @IBAction func sendMail(_ sender: Any) {
        self.countdown = 5
        
        let name = nameForm.text
        let email = emailForm.text
        let message = messageForm.text
        
        let alert : UIAlertController
        
        if((name?.isEmpty)! || (email?.isEmpty)! || (message?.isEmpty)!){
            alert = UIAlertController(title: "Error", message: "All the fields must be filled!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            alert = UIAlertController(title: "Success", message: "Thanks for your message " + name! + " !", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            nameForm.text = nil
            emailForm.text = nil
            messageForm.text = nil
        }

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
