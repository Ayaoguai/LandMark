//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 孙强 on 2020/6/11.
//  Copyright © 2020 孙强. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }.padding()
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[1])
            LandmarkRow(landmark: landmarkData[2])
        }.previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 70))
    }
}
