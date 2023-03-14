//
//  DetailViewController.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 14.03.2023.
//

import UIKit
import Hero

class DetailViewController: UIViewController {
    let pokemonNameLabel = UILabel().apply {
        $0.font = UIFont(name: "Latto-Bold", size: 24)
        $0.textColor = UIColor(named: "darkColor")
        $0.text = "bulbasaur"
    }
    let pokemonImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 300)).apply {
        $0.contentMode = .scaleAspectFit
        $0.image = UIImage(named: "cat")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupNavbar()
        addElements()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.heroNavigationAnimationType = .zoomSlide(direction: .right)
    }

    private func setupNavbar() {
        let backButton = UIBarButtonItem(
            image: UIImage(named: "arrow"),
            style: .plain,
            target: navigationController,
            action: #selector(UINavigationController.popViewController(animated:))
        )
        navigationItem.leftBarButtonItem = backButton
        navigationController?.navigationBar.tintColor = UIColor(named: "darkColor")
    }

    private func addElements() {
        view.addAutolayoutSubviews(pokemonNameLabel, pokemonImageView)

        NSLayoutConstraint.activate([
            pokemonNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 135),
            pokemonNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            pokemonNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 24),
            pokemonImageView.topAnchor.constraint(equalTo: pokemonNameLabel.bottomAnchor, constant: 40),
            pokemonImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//            pokemonImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 500)
        ])
    }
}
