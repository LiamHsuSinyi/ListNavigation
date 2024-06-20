//
//  ModelData.swift
//  ListNavigation
//
//  Created by Liam on 2024/6/20.
//

import Foundation

struct ModelData {
    
    enum ModelError: Error {
        case fileNotFound
    }
    
    static func landmarks() throws -> [Landmark] {
        try load("landmarkData.json")
    }
    
    static func load<T: Decodable>(_ filename: String) throws -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            throw ModelError.fileNotFound
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            throw error
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw error
        }
    }
}
