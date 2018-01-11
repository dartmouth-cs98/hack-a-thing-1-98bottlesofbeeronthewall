//
//  ViewController.swift
//  TipCalculator
//
//  Created by Henry Wilson on 1/10/18.
//  Copyright © 2018 Henry Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var total:Double = 0;
    
    @IBOutlet weak var displayLabel: UILabel!

    
    @IBAction func numbers(_ sender: UIButton)
    {
        if total == 0 {
            displayLabel.text = String(sender.tag)
            total = Double(displayLabel.text!)!
        } else {
            displayLabel.text = displayLabel.text! + String(sender.tag)
            total = Double(displayLabel.text!)!
        }
    }
    
    @IBAction func tip(_ sender: UIButton)
    {
        total = total * Double(sender.tag) / 100.0
        displayLabel.text = String(total)
    }
    
    @IBAction func clear(_ sender: Any)
    {
        total = 0
        displayLabel.text = String(total)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

