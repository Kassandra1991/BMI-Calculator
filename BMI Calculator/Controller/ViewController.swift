//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Aleksandra Asichka on 2023-02-03.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func heightValueChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
}

