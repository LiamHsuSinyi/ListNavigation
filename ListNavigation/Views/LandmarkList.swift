//
//  LandmarkList.swift
//  ListNavigation
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
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("觀光地標")
        } detail: {
            Text("選擇一個地標")
        }
    }
}

#Preview {
    LandmarkList()
}
