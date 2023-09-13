//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Vivek Patel on 2023-06-01.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : Float? = 0.0
    var calculation = Calculation()
    
    @IBOutlet weak var lblBmiScore: UILabel!
    @IBOutlet weak var lblAdvice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblBmiScore.text = String(bmiValue!)
        setUi()
    }
    
    func setUi(){
        calculation.setResultView(bmi: bmiValue!)
        lblAdvice.text = calculation.getAdvice()
        view.backgroundColor = calculation.getColor()
    }

    @IBAction func reCalculate(_ sender: Any) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
