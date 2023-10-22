//
//  LandmarkList.swift
//  Landmark
//
//  Created by Sabal on 10/19/23.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    
    @State private var showFavoriteOnly: Bool = false
    
    //It filters the landmarks array based on whether showFavoritesOnly is true or if the isFavorite property of the Landmark is true.
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }

    
    var body: some View {
        NavigationSplitView{
            //Because the Landmark conforms to Identifiable so non need to pass the id in List(id: \.id) like this
            List{
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorites Only")
                })
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
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
        .environment(ModelData())
}
