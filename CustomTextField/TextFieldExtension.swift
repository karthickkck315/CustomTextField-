//
//  TextFieldExtension.swift
//  Jasmis
//
//  Created by Apple on 10/01/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
  
    // add image to textfield
    func withImage(image: UIImage, placeholder: String) {
        
        let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 45))
        mainView.layer.cornerRadius = 5
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 45))
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        view.layer.borderWidth = CGFloat(0.5)
        view.layer.borderColor = UIColor.clear.cgColor
        mainView.addSubview(view)
        
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 12.0, y: 10.0, width: 24.0, height: 24.0)
        view.addSubview(imageView)
        
        let seperatorView = UIView()
        seperatorView.backgroundColor = .clear
        mainView.addSubview(seperatorView)
        
       // if isAppLanguage() { // is LTR Means
            seperatorView.frame = CGRect(x: 45, y: 0, width: 5, height: 45)
            self.leftViewMode = .always
            self.leftView = mainView
            self.textAlignment = .left
        /*} else {  // is RTL Means
            seperatorView.frame = CGRect(x: 0, y: 0, width: 5, height: 45)
            self.rightViewMode = .always
            self.rightView = mainView
            self.textAlignment = .right
        }*/
        
        self.placeholder = placeholder
        self.textColor = UIColor.black
        self.font = UIFont.systemFont(ofSize: 18)
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = CGFloat(0.5)
        self.layer.cornerRadius = 5
        self.addDoneButtonOnKeyboard()
    }
    
    func withOutImage(placeholder: String) {
        
        //if isAppLanguage() { // is LTR Means
            self.textAlignment = .left
//        } else {  // is RTL Means
//            self.textAlignment = .right
//        }
        
        self.placeholder = placeholder
        self.textColor = UIColor.black
        self.font = UIFont.systemFont(ofSize: 18)
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = CGFloat(0.5)
        self.layer.cornerRadius = 5
        self.addDoneButtonOnKeyboard()
    }
    
    func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar()
        doneToolbar.barStyle = .blackTranslucent
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style:.done, target: self, action: #selector(UITextField.doneButtonAction))
        done.setTitleTextAttributes([NSAttributedString.Key.font:UIFont.systemFont(ofSize: 18) , NSAttributedString.Key.foregroundColor : UIColor.white], for: .normal)
        let items = NSMutableArray()
        items.add(flexSpace)
        items.add(done)
        doneToolbar.items = items as? [UIBarButtonItem]
        doneToolbar.sizeToFit()
        self.inputAccessoryView = doneToolbar
        
    }
    @objc func doneButtonAction(){
        self.resignFirstResponder()
    }
    
    func setBottomBorder(width: CGFloat) {
        self.borderStyle = .none
        self.backgroundColor = UIColor.clear
        let height = 1.0
        let borderLine = UIView()
        borderLine.frame = CGRect(x: 0, y: Double(self.frame.height) - height, width: Double(width), height: height)
        borderLine.backgroundColor = UIColor.lightGray
        self.addSubview(borderLine)
    }
   
}

