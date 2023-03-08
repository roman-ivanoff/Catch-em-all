//
//  Applyable.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 08.03.2023.
//

import Foundation

public protocol Applyable {}

public extension Applyable where Self: AnyObject {
    @discardableResult
    func apply(_ fun: (Self) throws -> Void) rethrows -> Self {
        try fun(self)
        return self
    }
}

extension NSObject: Applyable {}
