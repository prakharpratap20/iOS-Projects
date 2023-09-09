//
//  PageModel.swift
//  Pinch
//
//  Created by Prakhar Pratap on 06/09/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
