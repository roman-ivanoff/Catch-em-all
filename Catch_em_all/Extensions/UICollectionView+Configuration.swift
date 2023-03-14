//
//  UICollectionView+Configuration.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 14.03.2023.
//

import UIKit

extension UICollectionView {
    func registerCustomCell(_ cell: NIBAble.Type) {
        register(cell.nib, forCellWithReuseIdentifier: cell.identifier)
    }
}
