//
//  SMIdentifiable.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 09.03.2023.
//

import Foundation
import UIKit

protocol SMIdentifiable {
    static var identifier: String { get }
    var identifier: String { get }
}

extension SMIdentifiable {
    static var identifier: String { String(describing: self) }
    var identifier: String { Self.identifier }
}
