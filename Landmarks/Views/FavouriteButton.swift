//
//  FavouriteButton.swift
//  Landmarks
//
//  Created by Mohammad Saifullah on 2/1/23.
//

import SwiftUI

struct FavouriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavouriteButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            FavouriteButton(isSet: .constant(true))
            FavouriteButton(isSet: .constant(false))
        }
    }
}
