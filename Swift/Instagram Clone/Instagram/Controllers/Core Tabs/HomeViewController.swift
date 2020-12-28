//
//  ViewController.swift
//  Instagram
//
//  Created by Thuận Nguyễn Văn on 10/12/2020.
//

import UIKit
import Firebase
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()

    }
    
    private func handleNotAuthenticated(){
        //Check Auth Status:
        if Auth.auth().currentUser == nil{
            //Show Login:
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }


}

