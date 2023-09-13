//
//  Calculation.swift
//  BMI Calculator
//
//  Created by Vivek Patel on 2023-06-03.
//

import UIKit

struct Calculation {
    
    var bmiValue : Float?
    var bmiModel : BMIModel?
    
    mutating func bmiCalculation(_ height : Float,_ weight : Int){
        bmiValue = Float(weight) / Float(height * height)
        bmiValue = Float(Int(bmiValue! * 100)) / 100
        print (bmiValue!)
    }
    
    mutating func setResultView(bmi : Float) -> BMIModel{
        if (bmi < 18.5){
            bmiModel = BMIModel(bmi: String(bmi), advice: "Please eat more!", color: UIColor.blue)
        }else if (bmi < 29.5){
            bmiModel = BMIModel(bmi: String(bmi), advice: "Maintain the score!", color: UIColor.green)
        }else {
            bmiModel = BMIModel(bmi: String(bmi), advice: "Please eat less!", color: UIColor.red)
        }
        return bmiModel!
    }
    
    func getBMIValue () -> String{
        return String(bmiValue!)
    }
    func getAdvice () -> String{
        return bmiModel!.advice!
    }
    func getColor () -> UIColor{
        return bmiModel!.color!
    }
    
}
