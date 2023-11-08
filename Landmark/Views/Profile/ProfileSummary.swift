//
//  ProfileSummary.swift
//  Landmark
//
//  Created by Sabal on 11/8/23.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    @Environment (ModelData.self) var modelData
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10){
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
            Divider()
                
            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)
                ScrollView(.horizontal) {
                    HStack{
                        HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Hike")
                            .hueRotation(/*@START_MENU_TOKEN@*/Angle(degrees: 90)/*@END_MENU_TOKEN@*/)
                        HikeBadge(name: "Tenth Hike")
                            .grayscale(0.50)
                            .hueRotation(Angle(degrees: 45))
                    }
                    
                }
            }
                
            Divider()
            
            VStack(alignment: .leading) {
                Text("Recents Hikes")
                    .font(.headline)
                HikeView(hike: modelData.hikes[0])
            }
                
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
