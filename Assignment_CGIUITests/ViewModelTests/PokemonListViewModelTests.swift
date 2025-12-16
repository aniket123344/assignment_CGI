//
//  PokemonListViewModelTests.swift
//  Assignment_CGIUITests
//
//  Created by Aniket Shinde on 15/12/25.
//

import XCTest
@testable import Assignment_CGI

final class PokemonRepositoryTests: XCTestCase {

    func testFetchPokemonSuccess() async throws {
        // GIVEN
        let mockAPIClient = MockAPIClient()
        let repository = PokemonRepository(apiClient: mockAPIClient)

        // WHEN
        let pokemon = try await repository.fetchPokemonList()

        // THEN
        XCTAssertEqual(pokemon.count, 2)
        XCTAssertEqual(pokemon.first?.name, "bulbasaur")
    }
}

