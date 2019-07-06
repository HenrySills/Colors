//
//  Color2ViewController.swift
//  Colors
//
//  Created by Henry Sills on 7/5/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class Color2ViewController: UIViewController {

    var color : Color?
    @IBOutlet weak var colorNameLabel: UILabel!
    
    @IBOutlet var colorlabel: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorNameLabel.text = color?.name
        self.view.backgroundColor = color?.uiColor
    }
    

}
