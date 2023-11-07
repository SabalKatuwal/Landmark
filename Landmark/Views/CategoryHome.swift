//
//  CategoryHome.swift
//  Landmark
//
//  Created by Sabal on 11/7/23.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("hello")
                .navigationTitle("Featured")
        } detail: {
            Text("Featured")
        }

    }
}

#Preview {
    CategoryHome()
}
