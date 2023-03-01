//
//  Stat.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 01.03.2023.
//

import Foundation

struct Stat: Decodable, Equatable {
    let baseStat: Int
    let effort: Int
    let stat: Species
}
