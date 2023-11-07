//
//  CategoryRowItem.swift
//  Landmark
//
//  Created by Sabal on 11/7/23.
//

import SwiftUI

struct CategoryRowItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryRowItem(landmark: ModelData().landmarks[0])
}
