//
//  ServiceError.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 08.03.2023.
//

import Foundation

enum ServiceError: Error, LocalizedError {
    case invalidUrl
    case invalidResponseStatus
    case dataTaskError(String)
    case corruptData
    case decodingError(String)

    public var errorDescription: String? {
        switch self {
        case .invalidUrl:
            return NSLocalizedString("url_is_invalid", comment: "")
        case .invalidResponseStatus:
            return NSLocalizedString("invalid_response_status", comment: "")
        case .dataTaskError(let string):
            return string
        case .corruptData:
            return NSLocalizedString("corrupt_data", comment: "")
        case .decodingError(let string):
            return string
        }
    }
}
