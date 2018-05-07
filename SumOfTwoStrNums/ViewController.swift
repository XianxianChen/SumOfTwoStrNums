//
//  ViewController.swift
//  SumOfTwoStrNums
//
//  Created by C4Q on 5/7/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var tfOne: UITextField!
    
    @IBOutlet weak var tfTwo: UITextField!
    
    @IBOutlet weak var sumLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tfOne.delegate = self
        self.tfTwo.delegate = self
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        // guard text fields are not empty, otherwise return
        guard let numOne = tfOne.text, let numTwo = tfTwo.text, numOne != "", numTwo != "" else {
            self.sumLabel.text = "Please enter numbers in the text fields."
            return
        }
        // call the function and return the sum in a string, and display the sum on the sumLabel.
        let sum = Model.manager.sumOfTwoStringTwo(strOne: numOne, strTwo: numTwo)
        self.sumLabel.text = "Sum is: \(sum)"
        
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
   
        // allow to put negative numbers
        if string == "-" && range.lowerBound == 0 {
            return true
        }
        // only allow to put numbers in text fields
        if "0123456789".contains(string) {
            return true
        }
        // allow to delete
        if string == "" {
            return true
        }
        return false
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide the keyboard when finishing editing
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // clear the text fields when editing begins
        textField.text = ""
        self.sumLabel.text = "Sum is: "
    }

}

