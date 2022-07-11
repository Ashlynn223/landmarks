//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ashlynn Mitchell on 2/16/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Joshua-Tree-National-Park")
            .resizable()
            .clipShape(Circle())
            .scaledToFit()
            .frame(width: 350)
            .overlay(Circle().stroke(.blue, lineWidth: 4))
            .shadow(color: .blue, radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
