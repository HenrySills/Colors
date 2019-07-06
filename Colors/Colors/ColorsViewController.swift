//
//  ColorsViewController.swift
//  Colors
//
//  Created by Henry Sills on 6/27/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
/*
    var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]
    var rowColor = [ UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
 */
    
    var colors = [Color(name: "Red" , uiColor: UIColor.red),
                  Color(name: "Orange" , uiColor: UIColor.orange),
                  Color(name: "Yellow" , uiColor: UIColor.yellow),
                  Color(name: "Green" , uiColor: UIColor.green),
                  Color(name: "Blue" , uiColor: UIColor.blue),
                  Color(name: "Purple" , uiColor: UIColor.purple),
                  Color(name: "Brown" , uiColor: UIColor.brown)]
    
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            self.title = "Colors"
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name
        
        cell.backgroundColor = color.uiColor
        // cell.backgroundColor = UIColor.green
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Color2ViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row {
                destination.color = colors[row]
            }
    }

}
