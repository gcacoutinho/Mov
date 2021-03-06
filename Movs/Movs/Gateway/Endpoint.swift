//
//  Endpoint.swift
//  Movs
//
//  Created by Gabriel Coutinho on 30/11/20.
//

import Foundation

struct Endpoint {
    private let path: String
    private let queryItems: [URLQueryItem]?
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.themoviedb.org"
        components.path = "/3\(path)"
        components.queryItems = queryItems
        
        return components.url!
    }
    
    static func createRequestToken(with apiKey: String) -> Endpoint {
        return Endpoint(
            path: "/authentication/token/new",
            queryItems: [
                URLQueryItem(name: "api_key", value: apiKey)
            ]
        )
    }
    
    static func createSession(with apiKey: String) -> Endpoint {
        return Endpoint(
            path: "/authentication/session/new",
            queryItems: [
                URLQueryItem(name: "api_key", value: apiKey)
            ]
        )
    }
    
    static func movie(id: Int, with apiKey: String) -> Endpoint {
        return Endpoint(
            path: "/movie/\(id)",
            queryItems: [
                URLQueryItem(name: "api_key", value: apiKey)
            ]
        )
    }
    
    static func trending(_ mediaType: String = "movie", ofThe timeWindow: JanelaTempoEnum = .semana,
                         page: Int = 1, with apiKey: String) -> Endpoint {
        return Endpoint(
            path: "/trending/\(mediaType)/\(timeWindow.rawValue)",
            queryItems: [
                URLQueryItem(name: "api_key", value: apiKey),
                URLQueryItem(name: "page", value: String(page))
            ]
        )
    }
    
}

