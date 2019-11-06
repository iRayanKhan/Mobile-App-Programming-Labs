//
//  ViewController.swift
//  Lights
//
//  Created by Khan, Rayan A on 9/9/19.
//  Copyright © 2019 Khan, Rayan A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var lightOn = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
       /* if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
            
        } */
    }
    @IBOutlet var lightButton: UIButton!
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
        
        
        
    
}

}
