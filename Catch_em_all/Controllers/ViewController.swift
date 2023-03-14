//
//  ViewController.swift
//  Catch’em all
//
//  Created by Roman Ivanov on 20.01.2023.
//

import UIKit
import RxSwift
import RxCocoa
import Hero

class ViewController: UIViewController {
    let contentView = ContentView()

    private let disposeBag = DisposeBag()
    private let pokeViewModel = PokeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        contentView.collectionView.rx.setDelegate(self)
            .disposed(by: disposeBag)

        pokeViewModel.pokemonCell
            .bind(to: contentView.collectionView.rx.items(
                cellIdentifier: PokemonCell.identifier,
                cellType: PokemonCell.self
            )) { _, element, cell in
                cell.nameLabel.text = element.pokeName.uppercased()
                cell.skillLabel.text = element.pokeSkill
                cell.pokemonImageView.image = UIImage(named: "cat")
                if let link = element.pokeImageUrl {
                    let url = URL(string: link)!
                    cell.loadImage(url: url)
                } else {
                    cell.pokemonImageView.image = UIImage(named: "cat")
                }
            }
            .disposed(by: disposeBag)

        pokeViewModel.fetchPokeList()

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        navigationController?.heroNavigationAnimationType = .zoomSlide(direction: .left)
    }

    override func loadView() {
        view = contentView
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("-------------- \(indexPath)")
        self.navigationController?.pushViewController(DetailViewController(), animated: true)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 20) / 2, height: 108)
    }
}

