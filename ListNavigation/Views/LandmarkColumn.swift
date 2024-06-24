//
//  LandmarkColumn.swift
//  ListNavigation
//
//  Created by Liam on 2024/6/24.
//

import SwiftUI

struct LandmarkColumn: View {
    
    var landmark: Landmark
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .shadow(radius: 7)
                .overlay(alignment: .topTrailing) {
                    if landmark.isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .offset(x: -8, y: 8)
                    }
                }
            
            VStack {
                landmark.image
                    .resizable()
                    .frame(width: 100, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Text(landmark.name)
                    .foregroundStyle(.gray)
            }
            .padding(.top, 5)
            .padding(.bottom, 5)
        }
    }
}

#Preview {
    Group {
        LandmarkColumn(landmark: ModelData.landmarks[0])
        LandmarkColumn(landmark: ModelData.landmarks[1])
    }
}
