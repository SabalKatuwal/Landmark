//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Sabal on 10/19/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
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
        VStack(alignment: .leading) {
            Text(landmark.name)
                .font(.title)
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
    LandmarkDetail(landmark: landmarks[0])
}
