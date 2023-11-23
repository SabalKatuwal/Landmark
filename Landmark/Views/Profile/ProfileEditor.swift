//
//  ProfileEditor.swift
//  Landmark
//
//  Created by Sabal on 11/11/23.
//

import SwiftUI

struct ProfileEditor: View {
    //property wrapper that is used to create a two-way binding between a parent view and its child view
    @Binding var profile: Profile
    
    //This code defines a computed property called dateRange that returns a ClosedRange of Date values. A ClosedRange is a type that represents a range of values that includes both the minimum and maximum values. In this case, the dateRange property represents the range of dates that is one year before and one year after the profile.goalDate property.
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
       
        List {
            HStack {
                Text("Username")
                    .bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
                    .bold()
            }
            VStack(alignment: .leading, spacing: 20){
                Text("Seasonal Photo").bold()
                
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
                
                DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                    Text("Goal Date").bold()
                }
                
            }
        }
         
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
