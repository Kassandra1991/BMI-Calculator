//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aleksandra Asichka on 2023-02-05.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) -> Float {
        bmi = weight / pow(height, 2)
        return bmi ?? .zero
    }
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? .zero)
        return bmiTo1DecimalPlace
    }
}
