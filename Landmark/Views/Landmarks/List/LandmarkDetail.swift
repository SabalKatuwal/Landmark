//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Sabal on 10/19/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    
    //if view ma pass gareko landmark ko id == json ko id
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.cordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            detailView
        }
    }
}

extension LandmarkDetail{
    var detailView: some View{
        @Bindable var modelData = modelData
        return VStack(alignment: .leading) {
            HStack {
                Text(landmark.name)
                    .font(.title)
                FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
            }
            HStack{
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
            }
            .foregroundStyle(.secondary)
            Divider()
            
            Text("About \(landmark.name)")
                .font(.title2)
            Text(landmark.description)
        }
        .padding()
    }
}


#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
