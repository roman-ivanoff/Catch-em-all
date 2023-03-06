//
//  Chain.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 06.03.2023.
//

import Foundation

struct Chain: Decodable {
    let evolvesTo: [Chain]
    let species: Species
}
