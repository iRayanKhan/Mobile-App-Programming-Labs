//
//  ViewController.swift
//  1.8 - IB Lab
//
//  Created by Khan, Rayan A on 9/9/19.
//  Copyright © 2019 Khan, Rayan A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mainLabel: UILabel!
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This app rocks"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

