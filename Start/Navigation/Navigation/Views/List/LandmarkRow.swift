//
//  LandmarkRow.swift
//  Navigation
//
//  Created by Liam on 2024/6/20.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(landmark.name)
                .foregroundStyle(.gray)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: ModelData.landmarks[0])
        LandmarkRow(landmark: ModelData.landmarks[1])
    }
}
