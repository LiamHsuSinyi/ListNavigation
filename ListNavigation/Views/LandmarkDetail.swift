//
//  LandmarkDetail.swift
//  ListNavigation
//
//  Created by Liam on 2024/6/20.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var body: some View {
        VStack {
            MapView(coordinate: .init())
                .frame(height: 300)
            
            CircleImage(image: .init(.charleyrivers))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree Nation Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandmarkDetail()
}
