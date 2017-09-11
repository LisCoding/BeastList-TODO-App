//
//  ViewController.swift
//  BeastList
//
//  Created by Liseth Cardozo Sejas on 9/10/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var userInput: UITextField!
    var tasks = ["Study Algorithms", "Go to gym", "Make Dinner"]
    

    @IBAction func beastButtonPressed(_ sender: UIButton) {
        print("Button was pressed")
        tasks.append(userInput.text!)
        TableView.reloadData()
        userInput.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  


}


extension ViewController: UITableViewDataSource {
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        // return an integer that indicates how many rows (cells) to draw
    }
    
    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = TableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    
}

