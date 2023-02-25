//
//  Move.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 25.02.2023.
//

import Foundation

struct Move: Decodable, Equatable {
    let move: Species
    let versionGroupDetails: [VersionGroupDetail]
}
