//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Khan, Rayan A on 10/23/19.
//  Copyright © 2019 Khan, Rayan A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: Any) {
        print("Button was tapped!")
        if toggle.isOn {
            print("The switch is on")
        } else {
                print("The switch is off")
                }
        print("The slider is set to \(slider.value)")
        
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}
    
func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on")
        }
        else {
            print("The switch is off")
        }
    }
    
func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
func keyboardReturnedKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
        
    }
    
func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    
    }

