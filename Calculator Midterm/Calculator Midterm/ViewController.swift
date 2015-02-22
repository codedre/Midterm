//
//  ViewController.swift
//  Calculator Midterm
//
//  Created by Andre Shonubi on 2/15/15.
//  Copyright (c) 2015 Andre Shonubi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calcDisplay: UILabel!
    
    var firstNumber = 0.0
    var secondNumber = 0.0
    var symbolForCalculation = ""
    var userIsInTheMiddleOfTypingNumber = false
    var errorCheckVariable = false
    
    @IBAction func equals(sender: UIButton) {
        if errorCheckVariable == true {} else {
            if symbolForCalculation == "=" {} else {
                secondNumber = displayValue
                calculateEquation()
                symbolForCalculation = sender.currentTitle!
            }
        }
    }
    
    @IBAction func operate(sender: UIButton) {
        if errorCheckVariable == true {} else {
            if symbolForCalculation == "" || symbolForCalculation == "=" {
                firstNumber = displayValue
                enter(sender)
            } else {
                userIsInTheMiddleOfTypingNumber = false
                secondNumber = displayValue
                calculateEquation()
                symbolForCalculation = sender.currentTitle!
            }
        }
    }
    
    @IBAction func pressZero(sender: UIButton) {
        appendDigit(sender)
    }
    
    @IBAction func pressOne(sender: UIButton) {
        appendDigit(sender)
    }
    
    
    @IBAction func pressTwo(sender: UIButton) {
        appendDigit(sender)
    }
    
    
    @IBAction func pressThree(sender: UIButton) {
        appendDigit(sender)
    }
    
    
    @IBAction func pressFour(sender: UIButton) {
        appendDigit(sender)
    }
    
    
    @IBAction func pressFive(sender: UIButton) {
        appendDigit(sender)
    }
    
    
    @IBAction func pressSix(sender: UIButton) {
        appendDigit(sender)
    }
    
    
    @IBAction func pressSeven(sender: UIButton) {
        appendDigit(sender)
    }
    
    
    @IBAction func pressEight(sender: UIButton) {
        appendDigit(sender)
    }
    
    
    @IBAction func pressNine(sender: UIButton) {
        appendDigit(sender)
    }
    @IBAction func pressDecimal(sender: UIButton) {
        appendDigit(sender)
    }
    
    @IBAction func clearButton(sender: UIButton) {
        if userIsInTheMiddleOfTypingNumber == true {
            userIsInTheMiddleOfTypingNumber = false
            calcDisplay.text = "0"
        } else {
            userIsInTheMiddleOfTypingNumber = false
            calcDisplay.text = "0"
            firstNumber = 0
            secondNumber = 0
            symbolForCalculation = ""
        }
    }
    
    @IBAction func changeToNegativeOrPositive(sender: UIButton) {
        if errorCheckVariable == true {} else {
            if calcDisplay.text! == "0" {} else {
                calcDisplay.text! = "\(displayValue * -1)"
            }
        }
    }
    
    @IBAction func percentButton(sender: UIButton) {
        if errorCheckVariable == true {} else {
            if calcDisplay.text! == "0" {} else {
                calcDisplay.text! = "\(displayValue / 100)"
            }
        }
    }
    
    
    func appendDigit(sender: UIButton) {
        errorCheckVariable = false
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingNumber {
            calcDisplay.text = calcDisplay.text! + digit
        } else {
            calcDisplay.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
    }
    
    func calculateEquation() {
        userIsInTheMiddleOfTypingNumber = false
        var result = 0.0
        let symbol = self.symbolForCalculation
        
        switch symbol {
        case "x" : result = firstNumber * secondNumber
        case "÷" : if secondNumber == 0 { errorCheckVariable = true } else { result = firstNumber / secondNumber }
        case "+" : result = firstNumber + secondNumber
        case "-" : result = firstNumber - secondNumber
            //            case "√" : result = sqrt(secondNumber)
        default : break
        }
        if result >= 999999 {
            errorCheckVariable = true
        }
        if errorCheckVariable == true {
            calcDisplay.text! = "Error"
            firstNumber = 0
            secondNumber = 0
            symbolForCalculation = ""
        } else {
            calcDisplay.text! = "\(result)"
            self.firstNumber = result
        }
    }

    func enter(sender:UIButton) {
        userIsInTheMiddleOfTypingNumber = false
        symbolForCalculation = sender.currentTitle!
    }
    
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(calcDisplay.text!)!.doubleValue
        } set {
            calcDisplay.text = "\(newValue)"
        }
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

