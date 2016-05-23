//
//  ViewController.swift
//  CalculatorMidTerm
//
//  Created by Shweta Chug on 16/05/2016.
//  Copyright © 2016 Shweta Chug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: Properties
  
 

  @IBOutlet weak var lblDisplay: UILabel!
  
  @IBOutlet weak var btnDigit: UIButton!
  
  @IBOutlet weak var btnAC: UIButton!
  var operation: String? = "="
  
  
  var isComplete = true
  var num1:Double = 0
  var num2:Double = 0
  override func viewDidLoad() {
    super.viewDidLoad()
   
  }

  
  // MARK: Actions
  
  @IBAction func btnACOnClick(sender: AnyObject) {
    lblDisplay.text = "0"
    
  }

  
  @IBAction func btnDigitOnClick(sender: AnyObject) {
    
    
    
    let input = sender.currentTitle!
   
    lblDisplay.text = isComplete ? input : lblDisplay.text! + input!
    
    isComplete = false
  }

  
  @IBAction func btnEqualOnClick(sender: AnyObject) {
    
   
    
    num2 = Double(lblDisplay.text!)!
    switch operation! {
    case "÷": lblDisplay.text = String(num1 / num2)
    case "x": lblDisplay.text = String(num1 * num2)
    case "+": lblDisplay.text = String(num1 + num2)
    case "-": lblDisplay.text = String(num1 - num2)
    default:break
    }

    operation = "="
  }
  
  
  @IBAction func btnOperation(sender: AnyObject) {

    num1 = Double(lblDisplay.text!)!
    operation = sender.currentTitle!
  }
  
  
  
}

