//
//  ContentView.swift
//  Navigation
//
//  Created by Liam on 2024/6/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showingList = true
    
    var body: some View {
        NavigationStack {
            if showingList {
                LandmarkList()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action: {
                                showingList.toggle()
                            }) {
                                Image(systemName: "square.grid.2x2")
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
            } else {
                LandmarkGrid()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action: {
                                showingList.toggle()
                            }) {
                                Image(systemName: "list.bullet")
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
            }
        }
        .animation(.default, value: showingList)
    }
}

#Preview {
    ContentView()
}
