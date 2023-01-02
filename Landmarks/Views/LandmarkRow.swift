//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Mohammad Saifullah on 2/1/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
            if landmark.isFavourite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        VStack {
            LandmarkRow(landmark: landmarks[0])

            LandmarkRow(landmark: landmarks[1])

            LandmarkRow(landmark: landmarks[2])

            LandmarkRow(landmark: landmarks[3])
        }
    }
}
