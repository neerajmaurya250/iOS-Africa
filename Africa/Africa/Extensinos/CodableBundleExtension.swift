//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Mobcoder on 11/07/21.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        
//        Locate JSON file
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("faild to locate \(file) in bundle.")
        }
        
//        Create property for data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Faild to load \(file) from bundle.")
        }
        
//        Create a decoder
        
        let decoder = JSONDecoder()

//       Create a property for decoded data
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Faild to decode \(file) from bundle.")
        }
        
//        Return
        return loaded
        
    }
    
}


