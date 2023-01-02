//
//  CircleImage.swift
//  Landmarks
//
//  Created by Mohammad Saifullah on 28/12/22.
//

import SwiftUI

struct CircleImage: View {
    let image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(color: .gray, radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarks[0].image)
    }
}
