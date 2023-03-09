//
//  PokemonCell.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 09.03.2023.
//

import Foundation
import Kingfisher

class PokemonCell: UICollectionViewCell, SMIdentifiable {

    let nameLabel = UILabel().apply {
        $0.font = UIFont(name: "Lato-Bold", size: 13.0)
        $0.textColor = UIColor(named: "redColor")
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "name"
    }
    let skillLabel = UILabel().apply {
        $0.font = UIFont(name: "Lato-Regular", size: 11.0)
        $0.textColor = UIColor(named: "grayColor")
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "skill"
    }
    let pokemonImageView = UIImageView().apply {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFit
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        addViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {
        clipsToBounds = true
        layer.cornerRadius = 2
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowColor = UIColor(named: "shadowColor")?.cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 4
        backgroundColor = .white
    }

    func addViews() {
        setup()

        addSubview(nameLabel)
        addSubview(skillLabel)
        addSubview(pokemonImageView)

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 9),
            skillLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 6),
            skillLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 9),
            pokemonImageView.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 3),
            pokemonImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            pokemonImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            pokemonImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 12)
        ])
    }

    func loadImage(url: URL) {
        let resource = ImageResource(downloadURL: url, cacheKey: url.absoluteString)

        pokemonImageView.kf.indicatorType = .activity
        pokemonImageView.kf.setImage(
            with: resource,
            options: [
                .transition(.fade(0.7)),
                .cacheOriginalImage
            ]
        )

        pokemonImageView.contentMode = .scaleAspectFit
    }
}
