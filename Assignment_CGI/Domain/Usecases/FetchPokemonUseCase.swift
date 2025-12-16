//
//  FetchPokemonUseCase.swift
//  Assignment_CGI
//
//  Created by Aniket Shinde on 15/12/25.
//

import Foundation

protocol FetchPokemonUseCaseProtocol {
    func execute() async throws -> [Pokemon]
}

final class FetchPokemonUseCase: FetchPokemonUseCaseProtocol {
    private let repository: PokemonRepositoryProtocol

    init(repository: PokemonRepositoryProtocol) {
        self.repository = repository
    }

    func execute() async throws -> [Pokemon] {
        try await repository.fetchPokemonList()
    }
}
