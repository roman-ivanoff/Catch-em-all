//
//  PokeInfo.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 07.03.2023.
//

import Foundation

struct PokeInfo: Decodable, Equatable {
    let id: Int
    let abilities: [Ability]
    let height: Int
    let weight: Int
    let species: Species
    let moves: [Move]
    let stats: [Stat]
    let sprites: Sprites
    let name: String
}
