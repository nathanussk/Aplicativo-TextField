//
//  ViewController.swift
//  TextField
//
//  Created by Nathan on 19/10/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameTextField.delegate = self
        self.lastNameTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.isEqual(self.nameTextField) {
            self.lastNameTextField.becomeFirstResponder()
        }else{
            self.lastNameTextField.resignFirstResponder()
        }
        
        print("textFieldShouldReturn \(String(describing: textField.text))")
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        textField.backgroundColor = .orange
        print("TextFieldDidEndEditing")
        
    }
    
}
