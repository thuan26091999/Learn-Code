//
//  LoginViewController.swift
//  Instagram
//
//  Created by Thuận Nguyễn Văn on 10/12/2020.
//


import SafariServices
import UIKit

class LoginViewController: UIViewController {

    
    struct Constants{
        
        static let connerRadius:CGFloat = 8.0
    }
    
    private let usernameEmailField:UITextField = {
        let field = UITextField()
        field.placeholder = "Username or Email..."
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
    
    private let loginButton:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.connerRadius
        button.backgroundColor = .systemBlue
        button.setTitleColor( .white, for: .normal)
        return button
    }()
    
    private let createAccountButton:UIButton = {
        let button = UIButton()
        button.setTitle("New User? Create an Account", for: .normal)
        button.setTitleColor(.label, for: .normal)
        return button
    }()
    
    private let termButton:UIButton = {
        let button = UIButton()
        button.setTitle("Terms of Service", for: .normal)
        button.setTitleColor(.secondaryLabel, for: .normal)
        
        return button
    }()
    
    private let privacyButton:UIButton = {
        let button =  UIButton()
        button.setTitle("Privacy Policy", for: .normal)
        button.setTitleColor(.secondaryLabel, for: .normal)
        return button
    }()
    
    private let headerView:UIView = {
        let header = UIView()
        header.clipsToBounds = true
        let backgroundImageView = UIImageView(image: UIImage(named: "gradient"))
        header.addSubview(backgroundImageView)
        return header
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.addTarget(self,
                              action: #selector(didTapLoginButton),
                              for: .touchUpInside)
        createAccountButton.addTarget(self,
                              action: #selector(didTapCreateAccountButton),
                              for: .touchUpInside)
        termButton.addTarget(self,
                              action: #selector(didTapTermsButton),
                              for: .touchUpInside)
        privacyButton.addTarget(self,
                              action: #selector(didTapPrivacyButton),
                              for: .touchUpInside)
        
        usernameEmailField.delegate = self
        passwordField.delegate = self
        
        
        addSubviews()
        view.backgroundColor = .systemBackground
    }
    
    
    override func viewDidLayoutSubviews() {
        //Assign Frame
        headerView.frame = CGRect(
            x: 0,
            y: 0.0,
            width: view.width,
            height: view.height/3.0
        )
        configureHeaderView()
        
        usernameEmailField.frame = CGRect(
            x: 25,
            y: headerView.bottom + 20,
            width: view.width - 50,
            height: 52.0
        )
        
        passwordField.frame = CGRect(
            x: 25,
            y: usernameEmailField.bottom + 10,
            width: view.width - 50,
            height: 52.0
        )
        
        loginButton.frame = CGRect(
            x: 25,
            y: passwordField.bottom + 10,
            width: view.width - 50,
            height: 52.0
        )
        
        createAccountButton.frame = CGRect(
            x: 25,
            y: loginButton.bottom + 10,
            width: view.width - 50,
            height: 52.0
        )
        
        termButton.frame = CGRect(
            x: 50,
            y: view.height - view.safeAreaInsets.bottom - 100,
            width: view.width - 100,
            height: 50
        )
        
        privacyButton.frame = CGRect(
            x: 50,
            y: view.height - view.safeAreaInsets.bottom - 50,
            width: view.width - 100,
            height: 50
        )
        
    
        
        
    }
    
    
    private func configureHeaderView(){
        guard headerView.subviews.count == 1 else {
            return
        }
        
        guard let backgroundView = headerView.subviews.first else {
            return
        }
        backgroundView.frame = headerView.bounds
        
        //Add Instagram Logo
        let imageView = UIImageView(image: UIImage(named: "text"))
        headerView.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(
            x: headerView.width / 4,
            y: view.safeAreaInsets.top,
            width: headerView.width/2,
            height: headerView.height - view.safeAreaInsets.top
        )
        
        
    }
    
    private func addSubviews(){
        
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(createAccountButton)
        view.addSubview(termButton)
        view.addSubview(privacyButton)
        view.addSubview(headerView)
    }
    
    @objc private func didTapLoginButton(){
        usernameEmailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        guard let usernameEmail = usernameEmailField.text, !usernameEmail.isEmpty,
              let password = passwordField.text, !password.isEmpty, password.count >= 8 else {
            return
        }
        //Login Functionality
        var email:String?
        var username:String?
        if usernameEmail.contains("@"), usernameEmail.contains("."){
            email = usernameEmail
        }else{
            username = usernameEmail
        }
        AuthManager.shared.loginUser(Username: username, Email: email, Password: password) { success in
            DispatchQueue.main.async {
                if success{
                    //User Logged in
                    self.dismiss(animated: true, completion: nil)
                }else{
                    //Error Occurred
                    let alert = UIAlertController(title: "Login Error", message: "We Were Unable to log you in.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                    self.present(alert, animated: true)
                }
            }

        }
        
    }
    
    @objc private func didTapCreateAccountButton(){
        
        let vc = RegistrationViewController()
        vc.title = "Create Account"
        present(UINavigationController(rootViewController: vc), animated: true)
        
    }
    
    @objc private func didTapTermsButton(){
        guard let url = URL(string: "https://www.instagram.com/about/legal/terms/before-january-19-2013/#:~:text=Basic%20Terms,nude%2C%20or%20sexually%20suggestive%20photos.&text=You%20must%20not%20crawl%2C%20scrape,to%20user%20profiles%20and%20photos.") else {
            return
        }
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true)
    }
    
    @objc private func didTapPrivacyButton(){
        guard let url = URL(string: "https://help.instagram.com/519522125107875") else {
            return
        }
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true)
    }

}

extension LoginViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameEmailField {
            passwordField.becomeFirstResponder()
        }
        else if textField == passwordField{
            didTapLoginButton()
        }
        return true
    }
    
}
