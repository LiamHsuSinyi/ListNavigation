//
//  LandmarkList.swift
//  ListNavigation
//
//  Created by Liam on 2024/6/20.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        
        List(ModelData.landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
