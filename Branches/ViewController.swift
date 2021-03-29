//
//  ViewController.swift
//  Branches
//
//  Created by Michelle Ellis on 2021-03-28.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

//    MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.delegate = self
    }

    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        nameLabel.text = "<No name>"
    }
    
//    MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameLabel.text = textField.text
    }
}

