//
//  ViewController.swift
//  LoginAppD2
//
//  Created by Ye Pyae Sone Tun on 10/21/18.
//  Copyright © 2018 PrimeYZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfUserName: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblForgetPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogin.addTarget(self, action: #selector(onClickLogIn), for: .touchUpInside)
        
        btnRegister.addTarget(self, action: #selector(onClickRegister), for: .touchUpInside)
       
        let onTap = UITapGestureRecognizer(target: self, action: #selector(onClickForgetPassword))
        lblForgetPassword.isUserInteractionEnabled = true
        lblForgetPassword.addGestureRecognizer(onTap)
    }

    @objc func onClickLogIn(){
        let userName = tfUserName.text!
        let password = tfPassword.text!
        
//        print("\(userName) and \(password)")
        
        if userName.elementsEqual("admin") && password.elementsEqual("123"){
            
            let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! UINavigationController
            let vc = navigationController.viewControllers[0] as! SecondViewController
            vc.userName = userName
            self.present(navigationController, animated: true, completion: nil)
            
            
//            performSegue(withIdentifier: Constants.SegueId.LOGIN_SEGUE, sender: userName)
        }else{
            
        }
    }
    
    @objc func onClickRegister(){
        
        let navigationViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! UINavigationController
        let vc = navigationViewController.viewControllers[0] as! RegisterViewController
        
        self.present(navigationViewController, animated: true, completion: nil)
    }
    
    @objc func onClickForgetPassword(){
        let navigationViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordViewController") as! UINavigationController
        self.present(navigationViewController, animated: true, completion: nil)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == Constants.SegueId.LOGIN_SEGUE {
//            let vc = segue.destination as! SecondViewController
//            vc.userName = sender as? String
//        }
//    }

}

