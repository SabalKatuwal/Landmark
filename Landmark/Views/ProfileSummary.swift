//
//  ProfileSummary.swift
//  Landmark
//
//  Created by Sabal on 11/8/23.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(profile.username)
                .bold()
                .font(.title)
            Text("Notifications: \(profile.prefersNotifications ? "On" : "Off") ")
            Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
            Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
            Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                        
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
}
