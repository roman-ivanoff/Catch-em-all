//
//  VersionGroupDetail.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 16.02.2023.
//

import Foundation

struct VersionGroupDetail: Decodable, Equatable {
    let levelLearnedAt: Int
    let moveLearnMethod: Species
    let versionGroup: Species
}
