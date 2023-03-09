//
//  PokemonListCollectionView.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 09.03.2023.
//

import UIKit

class PokemonListCollectionView: UICollectionView {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical

        super.init(frame: frame, collectionViewLayout: flowLayout)

        contentInset = UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 4)
        backgroundColor = UIColor.clear.withAlphaComponent(0)
        showsVerticalScrollIndicator = false
        register(PokemonCell.self, forCellWithReuseIdentifier: PokemonCell.identifier)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
