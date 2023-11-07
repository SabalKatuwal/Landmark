//
//  CategoryHome.swift
//  Landmark
//
//  Created by Sabal on 11/7/23.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                        
                }
                .listRowInsets(EdgeInsets())    //Fill the row to screen width
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Featured")
        }

    }
}


#Preview {
    CategoryHome()
        .environment(ModelData())
}
