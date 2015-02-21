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
    
    @IBAction func pressZero(sender: UIButton) {
        calcDisplay.text! += "0"
    }
    
    @IBAction func pressOne(sender: UIButton) {
        if first(calcDisplay.text!) == "0"
            { calcDisplay.text! = "1" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-1" }
        
        else
        { calcDisplay.text! += "1" }
        
    }
    
    
    @IBAction func pressTwo(sender: UIButton) {
        if first(calcDisplay.text!) == "0"
        { calcDisplay.text! = "2" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-2" }
            
        else
        { calcDisplay.text! += "2" }
    }
    
    
    @IBAction func pressThree(sender: UIButton) {
        if first(calcDisplay.text!) == "0"
        { calcDisplay.text! = "3" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-3" }
            
        else
        { calcDisplay.text! += "3" }
    }
    
    
    @IBAction func pressFour(sender: UIButton) {
        if first(calcDisplay.text!) == "0"
        { calcDisplay.text! = "4" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-4" }
            
        else
        { calcDisplay.text! += "4" }
    }
    
    
    @IBAction func pressFive(sender: UIButton) {
        if first(calcDisplay.text!) == "0"
        { calcDisplay.text! = "5" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-5" }
            
        else
        { calcDisplay.text! += "5" }
    }
    
    
    @IBAction func pressSix(sender: UIButton) {
        if first(calcDisplay.text!) == "0"
        { calcDisplay.text! = "6" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-1" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-6" }
            
        else
        { calcDisplay.text! += "6" }
    }
    
    
    @IBAction func pressSeven(sender: UIButton) {
        if (first(calcDisplay.text!) == "0")
        { calcDisplay.text! = "7" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-7" }
            
        else
        { calcDisplay.text! += "7" }
    }
    
    
    @IBAction func pressEight(sender: UIButton) {
        if first(calcDisplay.text!) == "0"
        { calcDisplay.text! = "8" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-8" }
            
        else
        { calcDisplay.text! += "8" }
    }
    
    
    @IBAction func pressNine(sender: UIButton) {
        if first(calcDisplay.text!) == "0"
        { calcDisplay.text! = "9" }
            
        else if prefix(calcDisplay.text!, 2) == "-0"
        { calcDisplay.text = "-9" }
            
        else
        { calcDisplay.text! += "9" }
    }
    
    
    @IBAction func changeToNegativeOrPositive(sender: UIButton) {
        
        calcDisplay.text = "-" + calcDisplay.text!
    }
    
  /*

    var userIsInTheMiddleOfTypingNumber = false
    var display: UILabel = UILabel(frame:CGRect(x: 0, y: 0, width: 0, height: 0))

    var brain = PerformOperations()

    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        } set {
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingNumber = false
        }
    }

    
    func appendDigit(sender:UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingNumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
    }
    
    func operate (sender:UIButton) {
        if userIsInTheMiddleOfTypingNumber {
            enter(sender)
        }
        if let operation = sender.currentTitle {
            if let result = brain.performOperation(operation) {
                displayValue = result
            } else {
                displayValue = 0
            }
        }
    }
    
    func enter(sender:UIButton) {
        userIsInTheMiddleOfTypingNumber = false
        if let result = brain.pushOperand(displayValue) {
            displayValue = result
        } else {
            displayValue = 0
        }
    }
        */
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

