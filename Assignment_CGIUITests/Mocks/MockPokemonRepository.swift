//
//  MockPokemonRepository.swift
//  Assignment_CGIUITests
//
//  Created by Aniket Shinde on 15/12/25.
//

@testable import Assignment_CGI
import Foundation

final class MockPokemonRepository: PokemonRepositoryProtocol {

    var shouldThrowError = false

    func fetchPokemonList() async throws -> [Pokemon] {
        if shouldThrowError {
            throw NSError(domain: "TestError", code: 0)
        }

        return [
            Pokemon(name: "bulbasaur", url: "url1"),
            Pokemon(name: "charmander", url: "url2")
        ]
    }
}

