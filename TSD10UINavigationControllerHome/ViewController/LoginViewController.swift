//
//  ViewController.swift
//  TSD10UINavigationControllerHome
//
//  Created by Дмитрий Геращенко on 11.07.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let logo = UIImageView()
    private let phoneLabel = UILabel()
    private let phoneTextField = PhoneTextField()
    private let passwordLabel = UILabel()
    private let passwordTextField = PasswordTextField()
    
    private let signInButton = UIButton()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.view.backgroundColor = .systemBackground
//        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        navigationController?.navigationBar.shadowImage = UIImage()
//        navigationController?.navigationBar.backgroundColor = .clear
//        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.prefersLargeTitles = true
        
        self.title = "Food"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureLogo()
        self.configureEmailLabel()
        self.configurePhoneTextField()
        self.configurePasswordLabel()
        self.configurePasswordTextField()
        self.configureSignInButton()
        
        self.hideKeyboardWhenTappedAround()
    }
    
    // MARK: configure logo
    
    private func configureLogo() {
        self.logo.image = UIImage(systemName: "tortoise")
        self.logo.contentMode = .scaleAspectFit
        self.logo.tintColor = .systemTeal
        
        self.view.addSubview(self.logo)
    }
    
    // MARK: configure emailLabel

    private func configureEmailLabel() {
        self.phoneLabel.text = "Phone"
        self.phoneLabel.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        self.phoneLabel.textColor = .systemTeal
        
        self.view.addSubview(self.phoneLabel)
    }

    // MARK: configure emailLabel

    private func configurePhoneTextField() {
        self.view.addSubview(phoneTextField)
    }
    
    // MARK: configure passwordLabel
    
    private func configurePasswordLabel() {
        self.passwordLabel.text = "Password"
        self.passwordLabel.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        self.passwordLabel.textColor = .systemTeal

        self.view.addSubview(self.passwordLabel)
    }
    
    // MARK: configure passwordTextField
    
    private func configurePasswordTextField() {
        self.view.addSubview(self.passwordTextField)
    }
    
    // MARK: configure signInButton
    
    private func configureSignInButton() {
        self.signInButton.setTitle("Sign In", for: .normal)
        self.signInButton.backgroundColor = .systemBlue
        self.signInButton.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        self.signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        
        self.view.addSubview(signInButton)
    }
    
    @objc private func signInButtonTapped() {
        let foodViewController = FoodViewController()
        navigationController?.pushViewController(foodViewController, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // logo position
        let logoSize: CGFloat = 100
        self.logo.frame = CGRect(x: 0, y: self.view.safeAreaInsets.top + 20, width: logoSize, height: logoSize)
        self.logo.center.x = self.view.center.x
        
        // emailLabel
        self.phoneLabel.frame = CGRect(x: self.view.safeAreaInsets.left + 20, y: self.logo.frame.maxY + 20, width: self.view.frame.width - 40, height: 22)
        
        // emailTextField
        self.phoneTextField.frame = CGRect(x: self.view.safeAreaInsets.left + 20, y: self.phoneLabel.frame.maxY + 8, width: self.view.frame.width - 40, height: 40)
        
        // passwordLabel
        self.passwordLabel.frame = CGRect(x: self.view.safeAreaInsets.left + 20, y: self.phoneTextField.frame.maxY + 20, width: self.view.frame.width - 40, height: 22)
        
        // passwordTextField
        self.passwordTextField.frame = CGRect(x: self.view.safeAreaInsets.left + 20, y: self.passwordLabel.frame.maxY + 8, width: self.view.frame.width - 40, height: 40)
        
        // signInButton
        self.signInButton.frame = CGRect(x: self.view.safeAreaInsets.left + 40, y: self.passwordTextField.frame.maxY + 40, width: self.view.frame.width - 80, height: 60)
        self.signInButton.layer.cornerRadius = 15
        
    }
}



