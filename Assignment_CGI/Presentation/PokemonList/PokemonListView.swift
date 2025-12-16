//
//  PokemonListView.swift
//  Assignment_CGI
//
//  Created by Aniket Shinde on 15/12/25.
//

import SwiftUI

struct PokemonListView: View {

    @StateObject var viewModel: PokemonListViewModel

    var body: some View {
        NavigationStack {
            List(viewModel.pokemon) { pokemon in
                NavigationLink(pokemon.name.capitalized) {
                    PokemonDetailView(
                        viewModel: PokemonDetailViewModel(pokemon: pokemon)
                    )
                }
            }
            .navigationTitle("Pokémon")
            .task {
                await viewModel.loadPokemon()
            }
            .overlay {
                if viewModel.isLoading {
                    ProgressView()
                }
            }
        }
    }
}
