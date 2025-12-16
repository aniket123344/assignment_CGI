//
//  PokemonRepositoryTests.swift
//  Assignment_CGIUITests
//
//  Created by Aniket Shinde on 15/12/25.
//

import XCTest
@testable import Assignment_CGI

@MainActor
final class PokemonListViewModelTests: XCTestCase {

    func testLoadPokemonSuccess() async {
        // GIVEN
        let mockUseCase = MockFetchPokemonUseCase()
        let viewModel = PokemonListViewModel(useCase: mockUseCase)

        // WHEN
        await viewModel.loadPokemon()

        // THEN
        XCTAssertEqual(viewModel.pokemon.count, 2)
        XCTAssertFalse(viewModel.isLoading)
        XCTAssertNil(viewModel.errorMessage)
    }

    func testLoadPokemonFailure() async {
        // GIVEN
        let mockUseCase = MockFetchPokemonUseCase()
        mockUseCase.shouldThrowError = true
        let viewModel = PokemonListViewModel(useCase: mockUseCase)

        // WHEN
        await viewModel.loadPokemon()

        // THEN
        XCTAssertTrue(viewModel.pokemon.isEmpty)
        XCTAssertNotNil(viewModel.errorMessage)
        XCTAssertFalse(viewModel.isLoading)
    }
}
