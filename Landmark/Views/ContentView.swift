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
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            rowView
                
            
        
                
        }
        
    }
}

extension ContentView{
    var rowView: some View{
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack{
                Text("Joshua National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            .foregroundStyle(.secondary)
            Divider()
            
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here.")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
