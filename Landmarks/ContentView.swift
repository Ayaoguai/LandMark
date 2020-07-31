//
//  ContentView.swift
//  Landmarks
//
//  Created by 孙强 on 2020/6/10.
//  Copyright © 2020 孙强. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300).edgesIgnoringSafeArea(.top)
            CircleImage(image: landmark.image).offset(y:-130).padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name).font(.title).foregroundColor(.green)
                HStack {
                    Text(landmark.park)
                    .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                    .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
    }
}
