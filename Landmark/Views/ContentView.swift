//
//  ContentView.swift
//  Landmark
//
//  Created by Sabal on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList()
        }
        
    }
}



#Preview {
    ContentView()
        .environment(ModelData())
}
