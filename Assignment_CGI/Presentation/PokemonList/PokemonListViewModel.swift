//
//  PokemonListViewModel.swift
//  Assignment_CGI
//
//  Created by Aniket Shinde on 15/12/25.
//

import Foundation

@MainActor
final class PokemonListViewModel: ObservableObject {

    @Published var pokemon: [Pokemon] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let useCase: FetchPokemonUseCaseProtocol

    init(useCase: FetchPokemonUseCaseProtocol) {
        self.useCase = useCase
    }

    func loadPokemon() async {
        isLoading = true
        do {
            pokemon = try await useCase.execute()
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
}

