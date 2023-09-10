//
//  CenterModifier.swift
//  Africa
//
//  Created by Prakhar Pratap on 10/09/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
