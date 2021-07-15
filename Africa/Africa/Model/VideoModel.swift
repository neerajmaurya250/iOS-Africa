//
//  VideoModel.swift
//  Africa
//
//  Created by Mobcoder on 13/07/21.
//

import Foundation


struct Video: Codable, Identifiable{
    
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String{
        "video-\(id)"
    }
    
}
