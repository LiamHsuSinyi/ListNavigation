//
//  LandmarkGrid.swift
//  ListNavigation
//
//  Created by Liam on 2024/6/24.
//

import SwiftUI

struct LandmarkGrid: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 100, maximum: 200)),
        GridItem(.flexible(minimum: 100, maximum: 200))
    ]
    
    var landmarks: [Landmark] {
        ModelData.landmarks
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, content: {
                ForEach(landmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            })
            .navigationTitle("觀光地標")
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 20)
        }
    }
}

#Preview {
    LandmarkGrid()
}
