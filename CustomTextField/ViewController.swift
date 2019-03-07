//
//  ViewController.swift
//  CustomTextField
//
//  Created by Apple on 07/03/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdextField: UITextField!
    @IBOutlet weak var fourthTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
     delegates()
     setUpTextFieldImage()
     
    }
    // MARK:- delegates
    func delegates() {
        firstTextField.delegate = self
        secondTextField.delegate = self
        thirdextField.delegate = self
        fourthTextField.delegate = self
    }
    
    // MARK:- setUpTextFieldImage
    func setUpTextFieldImage() {
        firstTextField.withImage( image:#imageLiteral(resourceName: "user"), placeholder: "EmailAddress")
        secondTextField.withImage( image:#imageLiteral(resourceName: "user"), placeholder: "Password")
        thirdextField.withImage( image:#imageLiteral(resourceName: "user"), placeholder: "Name")
        fourthTextField.withOutImage(placeholder: "FirstName")
    }
}

