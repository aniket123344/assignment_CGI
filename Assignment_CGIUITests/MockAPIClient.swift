
//  MockAPIClient.swift
//  Assignment_CGIUITests
//
//  Created by Aniket Shinde on 15/12/25.


import Foundation

@testable import Assignment_CGI

final class MockAPIClient: APIClient {

    override func fetchPokemon() async throws -> [Pokemon] {
        return [
            Pokemon(name: "bulbasaur", url: "url1"),
            Pokemon(name: "ivysaur", url: "url2")
        ]
    }
}
