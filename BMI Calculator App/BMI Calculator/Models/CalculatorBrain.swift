//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jorge Soto on 26/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi:BMI?

    func getBMIvalue()->String{
        return String(format:"%.1f", bmi?.value ?? 0.0)
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "No Data"
    }

    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }

    mutating func calculateBmi(height:Float ,weight:Float ){
        let bmiValue = weight / (pow(height, 2))
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if(bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Normal Weight", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Overweight", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
}
