//
//  ContentView.swift
//  Apex Predators
//
//  Created by Prakhar Pratap on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    let apController = PredatorController()
    @State var sortAplhabetical = false
    @State var currentFilter = "All"
    
    var body: some View {
        apController.filterBy(type: currentFilter)
        
        if sortAplhabetical {
            apController.sortByAlphabetical()
        } else {
            apController.sortByMovieAppearance()
        }
        
         return NavigationView {
            List {
                ForEach(apController.apexPredators) { predator in
                    NavigationLink(destination: PredatorDetail(predator: predator)) {
                        PredatorRow(predator: predator)
                    }
                }
            }
            .navigationTitle("Apex Predators")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        withAnimation {
                            sortAplhabetical.toggle()
                        }
                    } label: {
                        if sortAplhabetical {
                            Image(systemName: "film")
                        } else {
                            Image(systemName: "textformat")
                        }
                    }
                }
            
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Picker("Filter", selection: $currentFilter.animation()) {
                            ForEach(apController.typeFilters, id: \.self) { type in
                                HStack {
                                    Text(type)
                                    Spacer()
                                    Image(systemName: apController.typeIcon(for: type))
                                }
                            }
                        }
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
             }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
