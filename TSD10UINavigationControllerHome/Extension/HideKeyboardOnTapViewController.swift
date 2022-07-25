//
//  HideKeyboardOnTapViewController.swift
//  TSD10UINavigationControllerHome
//
//  Created by Дмитрий Геращенко on 12.07.2022.
//

import UIKit
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
