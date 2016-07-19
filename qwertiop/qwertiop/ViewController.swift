//
//  ViewController.swift
//  qwertiop
//
//  Created by Veronika Stoilova on 7/19/16.
//  Copyright © 2016 Veronika Stoilova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resultTextField: UITextField!

    @IBAction func didEndEditingFirstField(sender: AnyObject) {
        let field = sender as! UITextField
        print("End editing first field \(field.text)")
        
    }
    
    
    @IBAction func didEndEditingSecondField(sender: AnyObject) {
        let field = sender as! UITextField
        print("End editing second field \(field.text)")
        
        
    }
    
    @IBAction func textDidChangeFirstField(sender: UITextField) {
        resultTextField.text = ""
        print("Did change first field \(sender.text)")
        
    }
    
    
    @IBAction func textDidChangeSecondField(sender: UITextField) {
        resultTextField.text = ""
        print("Did change second field \(sender.text)")
        
    }
    
    @IBAction func sum(sender: AnyObject) {
        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
        let firstNum = firstTextField.text == "" ? 0 : Int(firstTextField.text!)
        let secondNum = secondTextField.text == "" ? 0 : Int(secondTextField.text!)
        let sum = firstNum! + secondNum!
        resultLabel.text = "\(sum)"
        resultTextField.text = "\(sum)"
        print("Did tap sum")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //some changes to have stuff to commit
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

