//
//  ViewController.swift
//  githubLogin
//
//  Created by 강현준 on 2023/05/18.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func github(_ sender: UIButton) {
        
        // GitHub 로그인 관련 상수
            let clientID = "Iv1.58f6f695a69fa709"
            let redirectURL = "https://githublogin-ab2eb.firebaseapp.com/__/auth/handler"
            let scope = "repo,user" // 요청할 권한 범위
        
                              
        
        let authURLString = "https://github.com/login/oauth/authorize?client_id=\(clientID)&redirect_uri=\(redirectURL)&scope=\(scope)"
        guard let authURL = URL(string: authURLString), UIApplication.shared.canOpenURL(authURL) else {
            print("Invalid auth URL")
            return
        }

        UIApplication.shared.open(authURL)
        
    }
    

}

