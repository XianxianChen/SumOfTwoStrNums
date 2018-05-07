//
//  Model.swift
//  SumOfTwoStrNums
//
//  Created by C4Q on 5/7/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation

class Model {
    // Singleton: a single, globally shared instance of a custom class
    static let manager = Model()
    private init() {}
   func sumOfTwoStringTwo(strOne: String, strTwo: String) -> String {
        guard let numOne = Double(strOne), let numTwo = Double(strTwo) else {
            return "please enter string of numbers"
        }
        let sum = numOne - (-numTwo)
        var result = String(sum)
        result.removeLast()
        result.removeLast()
        return "\(result)"
    }
}

