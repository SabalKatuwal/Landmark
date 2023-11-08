//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Sabal on 10/19/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            
            Text(landmark.name)
            
            
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    LandmarkRow(landmark: ModelData().landmarks[0])
}
