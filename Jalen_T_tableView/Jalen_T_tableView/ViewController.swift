//
//  ViewController.swift
//  Jalen_T_tableView
//
//  Created by Jalen Taylor on 8/18/20.
//  Copyright © 2020 Jalen Taylor. All rights reserved.
//

import UIKit

//TO DO:
//  16. Modify the class view controller line to look like the line below
//
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

//TO DO:
//  17. Create an array call billsGuitars and enter the elements below
//
    var JaysGames = ["Brutal Legends", "DBZ Fighters", "OFF", "Undertale"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

//TO DO:
//  18. Enter the function below it's purpose is to define the number of rows that will be needed based on how many elements are in the array
//
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return JaysGames.count
    }

//TO DO:
//  19. Add the function below, it's purpose is to load all of the data from the array into the table view
//
    func tableView(_ tableView: UITableView,  cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
        cell?.textLabel?.text = JaysGames[indexPath.row]
        
        return cell!
                
    }
 
//TO DO:
//  20. Add the function below, it's purpose is to display a pop up when you click on one of the items in the table view.
//
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = JaysGames[indexPath.row]
        let alert = UIAlertController(title: "You chose this game...nice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "boop", style: .default, handler: { action -> Void in })
            // Just dismiss the bubble when I click OK
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
        
    
    }
    
}
