//
//  ViewController.swift
//  FoodTrucker
//
//  Created by Achref Meghirbi on 2/15/19.
//  Copyright © 2019 Achref Meghirbi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    // MARK : proprities
    
    
    @IBOutlet weak var mealName: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var mealLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mealName.delegate = self
    }

    // MARK : actions
    @IBAction func SaveAction(_ sender: UIButton) {
        mealLabel.text = mealName.text
    }
    
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        mealLabel.text = mealName.text
    }
}

