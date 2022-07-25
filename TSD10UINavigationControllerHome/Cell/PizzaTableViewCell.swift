//
//  PizzaTableViewCell.swift
//  TSD10UINavigationControllerHome
//
//  Created by Дмитрий Геращенко on 12.07.2022.
//

import UIKit

final class PizzaTableViewCell: UITableViewCell {
    
    static var reuseID: String {
        String(describing: Self.self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
}
