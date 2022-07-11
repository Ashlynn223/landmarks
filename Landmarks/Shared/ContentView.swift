//
//  ContentView.swift
//  Shared
//
//  Created by Ashlynn Mitchell on 2/16/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showDescription = false
    
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.green)
                    .padding(.bottom, 10)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }.font(.subheadline)
            }.padding(30)
            VStack {
                if !showDescription {
                    Button("More About Turtle Rock") {
                        withAnimation {
                            showDescription.toggle()
                        }
                    }.padding(.bottom, 20)
                }
                if showDescription {
                    
                    DescriptionView().transition(.slide)
                        .onTapGesture {
                            withAnimation {                                showDescription.toggle()
                            }
                        }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
            .previewDevice("iPhone 11")
    }
}
