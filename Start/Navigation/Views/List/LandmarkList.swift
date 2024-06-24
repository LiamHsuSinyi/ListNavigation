//
//  LandmarkList.swift
//  Navigation
//
//  Created by Liam on 2024/6/20.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        ModelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        // Implement LandmarkList view
        EmptyView()
    }
}

#Preview {
    LandmarkList()
}
