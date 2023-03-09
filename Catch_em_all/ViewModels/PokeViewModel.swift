//
//  PokeViewModel.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 09.03.2023.
//

import Foundation
import RxSwift
import RxCocoa
import Kingfisher

class PokeViewModel {
    private let disposeBag = DisposeBag()
    private let pokeService: PokeService

    private let pokemons = BehaviorRelay<[Poke]>(value: [])
    let details = BehaviorRelay<[PokeInfo]>(value: [])
    let pokemonCell = BehaviorRelay<[PokeTestCell]>(value: [])
    let count = BehaviorRelay<Int>(value: 0)
    let next = BehaviorRelay<String?>(value: nil)
    let previous = BehaviorRelay<String?>(value: nil)

    init(pokeService: PokeService = PokeService()) {
        self.pokeService = pokeService
    }

    func fetchPokeList() {
        pokeService.fetchData(from: URL(string: PokeService.link)!, ofType: PokeList.self)
            .flatMap { [pokeService] in
                Observable.from($0.results)
                    .concatMap { pokemon in
                        pokeService.fetchData(from: URL(string: pokemon.url)!, ofType: PokeInfo.self)
                    }
                    .toArray()
            }
            .subscribe(onNext: { [weak self] pokemons in
                var pokemonsCell: [PokeTestCell] = []
                pokemons.map { pokemon in
                    pokemonsCell.append(PokeTestCell(
                        pokeName: pokemon.name,
                        pokeImageUrl: pokemon.sprites.other?.officialArtwork.frontDefault,
                        pokeSkill: pokemon.abilities[0].ability.name
                    ))
                }
                self?.pokemonCell.accept(pokemonsCell)
            })
            .disposed(by: disposeBag)
    }
}
