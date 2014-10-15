//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Don Noray on 10/14/14.
//  Copyright (c) 2014 Don Noray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var convertedDogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        humanYearsTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertHumanToDogYearsButtonPressed(sender: UIButton) {
        let ageFromTextField = humanYearsTextField.text.toInt()!
        let ageConversion = 7
        
        convertedDogYearsLabel.hidden = false
        convertedDogYearsLabel.textColor = UIColor.blueColor()
        convertedDogYearsLabel.text = "\(ageFromTextField * ageConversion)"
        
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }

}

