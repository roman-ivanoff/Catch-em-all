//
//  UIView+Configuration.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 14.03.2023.
//

import UIKit

extension UIView {
    func addAutolayoutSubviews(_ views: UIView...) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }
}
