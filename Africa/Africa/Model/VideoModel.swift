//
//  VideoModel.swift
//  Africa
//
//  Created by Prakhar Pratap on 09/09/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String{
        "video-\(id)"
    }
}
