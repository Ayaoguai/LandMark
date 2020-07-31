//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 孙强 on 2020/6/11.
//  Copyright © 2020 孙强. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { lanmark in
                NavigationLink(destination: LandmarkDetail(landmark: lanmark)) {
                    LandmarkRow(landmark: lanmark)
                }
                
            }.navigationBarTitle(Text("Landmarks").foregroundColor(.green))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
