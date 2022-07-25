//
//  PizzaViewController.swift
//  TSD10UINavigationControllerHome
//
//  Created by Дмитрий Геращенко on 12.07.2022.
//

import UIKit

final class PizzaViewController: UIViewController {
    
    private let tableView = UITableView()
    private let pizza = [Pizza(name: "Margarita"),
                         Pizza(name: "Pepperoni")]

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.view.backgroundColor = .systemBackground
        self.title = "Pizza"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: configureTableView
    
    private func configureTableView() {
        
    }

}

extension PizzaViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pizza.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
    }
    
    
}
