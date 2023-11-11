//
//  ProfileHost.swift
//  Landmark
//
//  Created by Sabal on 11/8/23.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftprofile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack {
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftprofile)
            }
            
        }
        .padding()
        
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
