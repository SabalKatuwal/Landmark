//
//  ProfileHost.swift
//  Landmark
//
//  Created by Sabal on 11/8/23.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @State private var draftprofile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack {
                Spacer()
                EditButton()
            }
            ProfileSummary(profile: draftprofile)
        }
        .padding()
        
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
