//
//  LandmarkGrid.swift
//  Navigation
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
        // Implement LandmarkGrid view
        EmptyView()
    }
}

#Preview {
    LandmarkGrid()
}
