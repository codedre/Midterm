//
//  ViewController.swift
//  Calculator Midterm
//
//  Created by Andre Shonubi on 2/15/15.
//  Copyright (c) 2015 Andre Shonubi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func pressZero(sender: UIButton) {
    }
    
    
    @IBAction func pressOne(sender: UIButton) {
        
        
    }
    
    
    @IBAction func pressTwo(sender: UIButton) {
    }
    
    
    @IBAction func pressThree(sender: UIButton) {
    }
    
    
    @IBAction func pressFour(sender: UIButton) {
    }
    
    
    @IBAction func pressFive(sender: UIButton) {
    }
    
    
    @IBAction func pressSix(sender: UIButton) {
    }
    
    
    @IBAction func pressSeven(sender: UIButton) {
    }
    
    
    @IBAction func pressEight(sender: UIButton) {
    }
    
    
    @IBAction func pressNine(sender: UIButton) {
    }
    
    

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
        
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

