//
//  ContentView.swift
//  ListNavigation
//
//  Created by Liam on 2024/6/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List(ModelData.landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    ContentView()
}
