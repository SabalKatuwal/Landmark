//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Sabal on 10/18/23.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
