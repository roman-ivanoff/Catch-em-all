//
//  Ability.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 03.03.2023.
//

import Foundation

struct Ability: Decodable, Equatable {
    let ability: Species
    let isHidden: Bool
    let slot: Int
}
