//
//  ContentView.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 09.03.2023.
//

import UIKit

class ContentView: UIView {
    let titleLabel = UILabel().apply {
        $0.text = NSLocalizedString("know_them_all", comment: "")
        $0.font = UIFont(name: "Lato-Bold", size: 24)
        $0.textColor = UIColor(named: "darkColor")
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    let lightningsImage = UIImageView().apply {
        $0.image = UIImage(named: "lightnings")
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.alpha = 0.5
    }
    let collectionView = PokemonListCollectionView().apply {
        $0.translatesAutoresizingMaskIntoConstraints = false
    }

    init() {
        super.init(frame: UIScreen.main.bounds)
        addElements()
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        backgroundColor = .white
    }

    private func addElements() {
        addSubview(titleLabel)
        addSubview(lightningsImage)
        addSubview(collectionView)

        NSLayoutConstraint.activate([
            lightningsImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            lightningsImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 24),
            collectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -23),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
