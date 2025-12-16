//
//  PokemonDetailView.swift
//  Assignment_CGI
//
//  Created by Aniket Shinde on 15/12/25.
//

import SwiftUI

struct PokemonDetailView: View {

    let viewModel: PokemonDetailViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.pokemon.name.capitalized)
                .font(.largeTitle)
                .bold()

            Text("API URL:")
                .font(.headline)

            Text(viewModel.pokemon.url)
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

