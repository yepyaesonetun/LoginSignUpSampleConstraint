//
//  ForgetPasswordViewController.swift
//  LoginAppD2
//
//  Created by Ye Pyae Sone Tun on 10/27/18.
//  Copyright © 2018 PrimeYZ. All rights reserved.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickRegister(_ sender: UIButton) {
       let navigationViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! UINavigationController
        self.present(navigationViewController, animated: true, completion: nil)
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
