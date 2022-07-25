//
//  FoodViewController.swift
//  TSD10UINavigationControllerHome
//
//  Created by Дмитрий Геращенко on 12.07.2022.
//

import UIKit

final class FoodViewController: UIViewController {
    
    private let pizzaButton = UIButton()
    private let sushiButton = UIButton()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.view.backgroundColor = .systemBackground
        
        self.title = "Food"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configurePizzaButton()
        self.configureSushiButton()
    }
    
    // MARK: configurePizzaButton
    
    private func configurePizzaButton() {
        self.pizzaButton.setTitle("Pizza", for: .normal)
        self.pizzaButton.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        self.pizzaButton.backgroundColor = .systemRed
        self.pizzaButton.addTarget(self, action: #selector(pizzaButtonTapped), for: .touchUpInside)
        
        self.view.addSubview(self.pizzaButton)
    }
    
    // MARK: configureSushiButton
    
    private func configureSushiButton() {
        self.sushiButton.setTitle("Sushi", for: .normal)
        self.sushiButton.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        self.sushiButton.backgroundColor = .systemYellow
        
        self.view.addSubview(self.sushiButton)
    }
    
    @objc private func pizzaButtonTapped() {
        let pizzaViewController = PizzaViewController()
        
        navigationController?.pushViewController(pizzaViewController, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // pizzaButton frame
        self.pizzaButton.frame = CGRect(x: self.view.safeAreaInsets.left + 40, y: self.view.safeAreaInsets.top + 20, width: self.view.frame.width - 80, height: 100)
        self.pizzaButton.layer.cornerRadius = 15
        
        // sushiButton frame
        self.sushiButton.frame = CGRect(x: self.view.safeAreaInsets.left + 40, y: self.pizzaButton.frame.maxY + 20, width: self.view.frame.width - 80, height: 100)
        self.sushiButton.layer.cornerRadius = 15
    }

}
