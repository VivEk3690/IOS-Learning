//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Vivek Patel on 2023-06-01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightInMeter: UILabel!
    @IBOutlet weak var weightInKg: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    var height : Float = 0.0
    var weight = 0
    var bmiValue : String?
    var calculation = Calculation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightValueChanged(_ sender: UISlider) {
        height = Float((sender.value * 100).rounded() / 100)
        heightInMeter.text = "\(height)m"
    }
    
    
    @IBAction func weightValueChnaged(_ sender: UISlider) {
        weight = Int(sender.value)
        weightInKg.text = "\(weight)Kg"
     }
    
    
    @IBAction func btnCalculatePressed(_ sender: UIButton) {
        calculation.bmiCalculation(height,weight)
        bmiValue = calculation.getBMIValue()
        print(bmiValue!)
        performSegue(withIdentifier: Segue.toResultViewController, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.toResultViewController {
            let resultVC = segue.destination as! ResultViewController
            print(bmiValue!)
            resultVC.bmiValue = Float(self.bmiValue!)
        }
    }
    
    
}

