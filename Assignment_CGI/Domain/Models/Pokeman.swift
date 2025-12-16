//
//  Pokeman.swift
//  Assignment_CGI
//
//  Created by Aniket Shinde on 15/12/25.
//

import Foundation

struct Pokemon: Identifiable, Decodable {
    let id = UUID()
    let name: String
    let url: String
}
