//
//  ViewController.swift
//  MemoryCalculator
//
//  Created by Mykal Cuin on 7/20/15.
//  Copyright (c) 2015 Mykal Cuin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberLabel : UILabel!
    @IBOutlet var upArrow : UIButton!
    @IBOutlet var downArrow : UIButton!
    @IBOutlet var clearButton : UIButton!
    @IBOutlet var divideButton : UIButton!
    @IBOutlet var openParenthesisButton : UIButton!
    @IBOutlet var closeParenthesisButton : UIButton!
    @IBOutlet var decimalButton : UIButton!
    @IBOutlet var multiplyButton : UIButton!
    @IBOutlet var sevenButton : UIButton!
    @IBOutlet var eightButton : UIButton!
    @IBOutlet var nineButton : UIButton!
    @IBOutlet var subtractButton : UIButton!
    @IBOutlet var fourButton : UIButton!
    @IBOutlet var fiveButton : UIButton!
    @IBOutlet var sixButton : UIButton!
    @IBOutlet var addButton : UIButton!
    @IBOutlet var oneButton : UIButton!
    @IBOutlet var twoButton : UIButton!
    @IBOutlet var threeButton : UIButton!
    @IBOutlet var equalsButton : UIButton!
    @IBOutlet var zeroButton : UIButton!
    @IBOutlet var deleteButton : UIButton!
    @IBOutlet var squareRootButton : UIButton!
    @IBOutlet var squareButton : UIButton!
    var parts = [String]()
    var x: Double = 0.0, y: Double = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add(a: Double, b: Double) -> String {
        
        var c = a + b
        var answer = "\(c)"
        
        return answer
        
    }
    
    func sub(a: Double, b: Double) -> String {
        
        let c = a - b
        var answer = "\(c)"
        
        return answer
        
    }
    
    func mult(a: Double, b: Double) -> String {
        
        let c = a * b
        var answer = "\(c)"
        
        return answer
        
    }
    
    func div(a: Double, b: Double) ->String {
        
        let c = a / b
        var answer = "\(c)"
        
        return answer
        
    }
    
    @IBAction func oneButtonClicked() {
        numberLabel.text?.append("1" as Character)
    }
    
    @IBAction func twoButtonClicked() {
        numberLabel.text?.append("2" as Character)
    }
    
    @IBAction func threeButtonClicked() {
        numberLabel.text?.append("3" as Character)
    }
    
    @IBAction func fourButtonClicked() {
        numberLabel.text?.append("4" as Character)
    }
    
    @IBAction func fiveButtonClicked() {
        numberLabel.text?.append("5" as Character)
    }

    @IBAction func sixButtonClicked() {
        numberLabel.text?.append("6" as Character)
    }
    
    @IBAction func sevenButtonClicked() {
        numberLabel.text?.append("7" as Character)
    }
    
    @IBAction func eightButtonClicked() {
        numberLabel.text?.append("8" as Character)
    }
    
    @IBAction func nineButtonClicked() {
        numberLabel.text?.append("9" as Character)
    }
    
    @IBAction func zeroButtonClicked() {
        numberLabel.text?.append("0" as Character)
    }
    
    @IBAction func upButtonClicked() {
        
    }
    
    @IBAction func downButtonClicked() {
        
    }
    
    @IBAction func clearButtonClicked() {
        numberLabel.text? = ""
    }
    
    @IBAction func deleteButtonClicked() {
        
    }
    
    @IBAction func openParenButtonClicked() {
        numberLabel.text?.append("(" as Character)
    }
    
    @IBAction func closeParenButtonClicked() {
        numberLabel.text?.append(")" as Character)
    }
    
    @IBAction func decimalButtonClicked() {
        numberLabel.text?.append("." as Character)
    }
    
    @IBAction func squareButtonClicked() {
        numberLabel.text?.append("^" as Character)
    }
    
    @IBAction func sqRootButtonClicked() {
        
    }
    
    @IBAction func divideButtonClicked() {
        numberLabel.text?.append("/" as Character)
    }
    
    @IBAction func multButtonClicked() {
        numberLabel.text?.append("*" as Character)
    }
    
    @IBAction func subButtonClikced() {
        numberLabel.text?.append("-" as Character)
    }
    
    @IBAction func addButtonClicked() {
        numberLabel.text?.append("+" as Character)
    }
    
    @IBAction func equalsButtonClicked() {
        if (numberLabel.text?.rangeOfString("+")) != nil {
            parts = numberLabel.text!.componentsSeparatedByString("+")
            x = (parts[0] as NSString).doubleValue
            y = (parts[1] as NSString).doubleValue
            numberLabel.text? = ""
            numberLabel.text? = add(x, b: y)
        } else if (numberLabel.text?.rangeOfString("-")) != nil {
            parts = numberLabel.text!.componentsSeparatedByString("-")
            x = (parts[0] as NSString).doubleValue
            y = (parts[1] as NSString).doubleValue
            numberLabel.text? = ""
            numberLabel.text? = sub(x, b: y)
        } else if (numberLabel.text?.rangeOfString("*")) != nil {
            parts = numberLabel.text!.componentsSeparatedByString("*")
            x = (parts[0] as NSString).doubleValue
            y = (parts[1] as NSString).doubleValue
            numberLabel.text? = ""
            numberLabel.text? = mult(x, b: y)
        } else if (numberLabel.text?.rangeOfString("/")) != nil {
            parts = numberLabel.text!.componentsSeparatedByString("/")
            x = (parts[0] as NSString).doubleValue
            y = (parts[1] as NSString).doubleValue
            numberLabel.text? = ""
            numberLabel.text? = div(x, b: y)
        }
    }
}

