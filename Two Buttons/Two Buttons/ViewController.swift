//
//  ViewController.swift
//  Two Buttons
//
//  Created by Rayan Khan on 10/29/19.
//  Copyright © 2019 Rayan Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textField.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// This is what I beleive about this siutation.
    // Cite Atleast 2 SOurces for 1 Point
    // 2 Points for good COmmentary and 3 Sources
    // Good commentary that ties backs to main thesis and subclaim and answers 1-3 of the points get 4 points
    // CIte 3 SOurces in parenthesis, Commentary relates to thesis subclaims,
    
    // SYnthesis - Defenceable claim argument clear and effective and commentary
}

