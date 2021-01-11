//
//  TestViewController.swift
//  TextField
//
//  Created by Thuận Nguyễn Văn on 09/01/2021.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
    }

}
extension TestViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == usernameEmailField {
//            passwordField.becomeFirstResponder()
//        }
//        else if textField == passwordField{
//            didTapLoginButton()
//        }
        return true
    }
    
}
