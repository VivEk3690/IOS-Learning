//
//  ViewController.swift
//  DigiPlace
//
//  Created by Vivek Patel on 2023-05-18.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var signUpViewContainer: UIView!
    
    @IBOutlet weak var loginViewContainer: UIView!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginViewContainer.isHidden = true
        signUpViewContainer.isHidden = false

    }

    @IBAction func loginBtnTouchUpInside(_ sender: Any) {
        loginViewContainer.isHidden = true
        signUpViewContainer.isHidden = false
    }
    
    @IBAction func signUpBtnTouchUpInside(_ sender: Any) {
        loginViewContainer.isHidden = false
        signUpViewContainer.isHidden = true
    }
    
    
}

