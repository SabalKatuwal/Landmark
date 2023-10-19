//
//  LandmarkList.swift
//  Landmark
//
//  Created by Sabal on 10/19/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            //Because the Landmark conforms to Identifiable so non need to pass the id in List(id: \.id) like this
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
