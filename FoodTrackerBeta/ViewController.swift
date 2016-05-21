//
//  ViewController.swift
//  FoodTrackerBeta
//
//  Created by Ankit Yadav on 14/05/16.
//  Copyright © 2016 Ankit Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    
    // MARK: Properties
    @IBOutlet var nameTextField: UITextField! //IB is Interface Builder
    @IBOutlet var mealNameLabel: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Handle text field's user input through delegate callbacks
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }

    // MARK: Actions
    @IBAction func setDefaultLabelText(sender: AnyObject)
    {
        mealNameLabel.text = "Default Text"
        
    }
}

