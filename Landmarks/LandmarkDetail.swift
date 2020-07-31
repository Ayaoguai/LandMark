//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 孙强 on 2020/6/11.
//  Copyright © 2020 孙强. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ContentView(landmark: landmark).navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
