//
//  APIClient.swift
//  Assignment_CGI
//
//  Created by Aniket Shinde on 15/12/25.
//

import Foundation

 class APIClient {

    func fetchPokemon() async throws -> [Pokemon] {
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=20")!
        let (data, _) = try await URLSession.shared.data(from: url)

        let response = try JSONDecoder().decode(PokemonResponse.self, from: data)
        return response.results
    }
}

struct PokemonResponse: Decodable {
    let results: [Pokemon]
}
