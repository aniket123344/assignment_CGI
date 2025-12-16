//
//  Assignment_CGIApp.swift
//  Assignment_CGI
//
//  Created by Aniket Shinde on 15/12/25.
//

import SwiftUI

@main
struct Assignment_CGIApp: App {
    var body: some Scene {
        WindowGroup {
            let apiClient = APIClient()
            let repository = PokemonRepository(apiClient: apiClient)
            let useCase = FetchPokemonUseCase(repository: repository)
            let viewModel = PokemonListViewModel(useCase: useCase)

            PokemonListView(viewModel: viewModel)
        }
    }
}
