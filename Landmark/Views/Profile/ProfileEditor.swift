//
//  ProfileEditor.swift
//  Landmark
//
//  Created by Sabal on 11/11/23.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    var body: some View {
       
        List {
            HStack {
                Text("Username")
                    .bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
        }
         
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
