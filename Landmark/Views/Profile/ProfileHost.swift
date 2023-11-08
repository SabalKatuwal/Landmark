//
//  ProfileHost.swift
//  Landmark
//
//  Created by Sabal on 11/8/23.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftprofile = Profile.default
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            ProfileSummary(profile: draftprofile)
        }
        .padding()
        
    }
}

#Preview {
    ProfileHost()
}
