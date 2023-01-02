//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Mohammad Saifullah on 2/1/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData:ModelData
    @State private var showFavourite: Bool = false
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            landmark.isFavourite || !showFavourite
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle("Favourites Only", isOn: $showFavourite)
                    
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
