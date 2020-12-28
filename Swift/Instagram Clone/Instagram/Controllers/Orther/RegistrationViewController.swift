//
//  RegistrationViewController.swift
//  Instagram
//
//  Created by Thuận Nguyễn Văn on 10/12/2020.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    struct Constants{
        
        static let connerRadius:CGFloat = 8.0
    }
    
    private let usernameField:UITextField = {
        let field = UITextField()
        field.placeholder = "Username..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.connerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let emailField:UITextField = {
        let field = UITextField()
        field.placeholder = "Email Address..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.connerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let passwordField:UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        field.placeholder = "Password..."
        field.returnKeyType = .continue
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.connerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let registerButton:UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.connerRadius
        button.backgroundColor = .systemGreen
        button.setTitleColor( .white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
        
        //Handle Register:
        registerButton.addTarget(self, action: #selector(didTapRegister), for: .touchUpInside)
        
        
        view.addSubview(usernameField)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(registerButton)
        
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //Assign Frame
        
        usernameField.frame = CGRect(x: 25.0, y: view.height/4, width: view.width - 50, height: 52)
        emailField.frame = CGRect(x: 25.0, y: usernameField.bottom + 15, width: view.width - 50, height: 52)
        passwordField.frame = CGRect(x: 25.0, y: emailField.bottom + 15, width: view.width - 50, height: 52)
        registerButton.frame = CGRect(x: 25.0, y: passwordField.bottom + 15, width: view.width - 50, height: 52)
    }

    @objc private func didTapRegister(){
        usernameField.resignFirstResponder()
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        
        guard let username = usernameField.text , !username.isEmpty,
              let email = emailField.text, !email.isEmpty, email.contains("@"), email.contains("."),
              let password = passwordField.text, !password.isEmpty, password.count >= 8
        else {
            return
        }
        
        AuthManager.shared.registerNewUser(Username: username, Email: email, Password: password) { registered in
            if registered{
                //Good to go
            }
            else{
                //Failed
            }
        }
        
        
        
    }
    
    

}

extension RegistrationViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameField {
            emailField.becomeFirstResponder()
        }
        else if textField == emailField{
            passwordField.becomeFirstResponder()
        }
        else{
            didTapRegister()
        }
        return true
    }
    
}
