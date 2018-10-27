//
//  RegisterViewController.swift
//  LoginAppD2
//
//  Created by Ye Pyae Sone Tun on 10/21/18.
//  Copyright © 2018 PrimeYZ. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var btnChooseDOB: UIButton!
    @IBOutlet weak var lblDOB: UILabel!
    private var datePicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        // Create a DatePicker
//        datePicker = UIDatePicker()
//        datePicker?.datePickerMode = .date
//        datePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
//
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
//        view.addGestureRecognizer(tapGesture)
//        btnChooseDOB.addSubview((datePicker ?? nil)!)
//
    }
    
//    @objc func viewTapped(gestureRecognizer : UITapGestureRecognizer){
//        view.endEditing(true)
//    }
//
//    @objc func dateChanged(datePicker:UIDatePicker){
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MM/dd/yyyy"
//        btnChooseDOB.titleLabel?.text = dateFormatter.string(from: datePicker.date)
//        view.endEditing(true)
//    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
