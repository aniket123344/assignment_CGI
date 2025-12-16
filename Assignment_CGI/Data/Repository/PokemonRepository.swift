//
//  PokemonRepository.swift
//  Assignment_CGI
//
//  Created by Aniket Shinde on 15/12/25.
//

import Foundation

protocol PokemonRepositoryProtocol {
    func fetchPokemonList() async throws -> [Pokemon]
}

final class PokemonRepository: PokemonRepositoryProtocol {

    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func fetchPokemonList() async throws -> [Pokemon] {
        try await apiClient.fetchPokemon()
    }
}
