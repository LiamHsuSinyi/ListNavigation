//
//  LandmarkDetail.swift
//  Navigation
//
//  Created by Liam on 2024/6/20.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            ScrollView {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack {
                        Text(landmark.en)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("關於 \(landmark.name)")
                        .font(.title2)
                        .padding(.bottom, 10)
                    
                    Text(landmark.description)
                }
                .padding()
                
                Spacer()
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData.landmarks[0])
}
