//
//  DescriptionView.swift
//  Landmarks
//
//  Created by Ashlynn Mitchell on 2/16/22.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack {
            Text("About Turtle Rock")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .shadow(radius: 10)
            ScrollView {
                Text("Turtle Rock is a rock formation in Joshua Tree National Park, California.This massive formation is located across from the parking lot from the entrance into Real Hidden Valley area in Joshua Tree National Park. The northwest face of Turtle Rock is several hundred feet long and works like a massive wall protecting a pleasant picnic area with trees, benches, and even bathrooms. On any weekend during the climbing season, you may see several climbing classes in progress under the trees and around many boulders strewn on the base of the northwest face. You will also run into families picnicking and children scrambling on smaller low angle rocks.")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                    .shadow(radius: 10)
                    .foregroundColor(.white)
            }
        }
            .background(
                Image("joshuaTreeTurtleRock")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.8)
                    .frame(height: 300)
            )
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
