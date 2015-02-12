//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Dirk Boller on 11.02.15.
//  Copyright (c) 2015 Dirk Boller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDogYears: UILabel!
    @IBOutlet weak var textFieldHumanYears: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertYears(sender: UIButton) {
        let intHumanYears = textFieldHumanYears.text.toInt()!
        labelDogYears.hidden = false
        //labelDogYears.text = "entspricht \(intHumanYears * 7) Hundejahren"
        var doubleDogYears:Double = 0.0
        for index in 1...intHumanYears {
            doubleDogYears += (index <= 2) ? 10.5 : 4
        }
        labelDogYears.text = "entspricht \(doubleDogYears) Hundejahren"
        textFieldHumanYears.resignFirstResponder()
    }
}

