//
//  ViewController.swift
//  Instagram
//
//  Created by William Robersone on 9/5/20.
//  Copyright © 2020 William Robersone. All rights reserved.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNonAuthenticated()
        
    }

    private func handleNonAuthenticated() {
        // Check Auth status
        if Auth.auth().currentUser == nil {
            // Show Sign In
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
}

