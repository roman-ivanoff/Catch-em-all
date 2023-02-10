//
//  PokeList.swift
//  Catch’em all
//
//  Created by Roman Ivanov on 02.02.2023.
//

import Foundation

struct PokeList: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let pokemons: [Poke]
}
