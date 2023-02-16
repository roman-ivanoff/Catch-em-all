//
//  Other.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 15.02.2023.
//

import Foundation

struct Other: Decodable, Equatable {
    let officialArtwork: OfficialArtwork

    enum CodingKeys: String, CodingKey {
        case officialArtwork = "official-artwork"
    }
}
