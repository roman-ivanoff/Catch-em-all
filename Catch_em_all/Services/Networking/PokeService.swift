//
//  PokeService.swift
//  Catch_em_all
//
//  Created by Roman Ivanov on 08.03.2023.
//

import Foundation
import RxSwift
import RxCocoa

public class PokeService {
    static let link = "https://pokeapi.co/api/v2/pokemon/?limit=10"

    func fetchData<T: Decodable>(from url: URL, ofType type: T.Type) -> Observable<T> {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return URLSession.shared.rx.data(request: URLRequest(url: url))
            .map { data in
                return try decoder.decode(T.self, from: data)
            }
    }
}
