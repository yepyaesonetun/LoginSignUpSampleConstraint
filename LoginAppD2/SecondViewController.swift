//
//  SecondViewController.swift
//  LoginAppD2
//
//  Created by Ye Pyae Sone Tun on 10/21/18.
//  Copyright © 2018 PrimeYZ. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblUserName: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       lblUserName.text = userName
    }

    @IBAction func back(_ sender: UIBarButtonItem) {
       self.dismiss(animated: true, completion: nil)
    }
}
