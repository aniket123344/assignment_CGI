//
//  MockFetchPokemonUseCase.swift
//  Assignment_CGIUITests
//
//  Created by Aniket Shinde on 15/12/25.
//

@testable import Assignment_CGI
import Foundation

final class MockFetchPokemonUseCase: FetchPokemonUseCaseProtocol {

    var shouldThrowError = false

    func execute() async throws -> [Pokemon] {
        if shouldThrowError {
            throw NSError(domain: "UseCaseError", code: 0)
        }

        return [
            Pokemon(name: "pikachu", url: "url1"),
            Pokemon(name: "eevee", url: "url2")
        ]
    }
}
