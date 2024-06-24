//
//  LandmarkGrid.swift
//  ListNavigation
//
//  Created by Liam on 2024/6/24.
//

import SwiftUI

struct LandmarkGrid: View {
    
    @State private var showFavoritesOnly = false
    
    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 100, maximum: 200)),
        GridItem(.flexible(minimum: 100, maximum: 200))
    ]
    
    var filteredLandmarks: [Landmark] {
        ModelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        ScrollView {
            Toggle(isOn: $showFavoritesOnly) {
                Text("Favorites only")
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            LazyVGrid(columns: columns, content: {
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkColumn(landmark: landmark)
                    }
                }
            })
            .navigationTitle("觀光地標")
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 20)
        }
        .animation(.default, value: filteredLandmarks)
    }
}

#Preview {
    LandmarkGrid()
}
