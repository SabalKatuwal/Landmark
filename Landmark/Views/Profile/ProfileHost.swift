//
//  ProfileHost.swift
//  Landmark
//
//  Created by Sabal on 11/8/23.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData  //data from model 
    @State private var draftprofile = Profile.default //Used to hold the changes that the user makes to the profile data before they are saved
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack {
                if (editMode?.wrappedValue == .active) {
                    
                    Button("Cancel", role: .cancel) {
                        draftprofile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftprofile)
                    .onAppear(){
                        draftprofile = modelData.profile
                    }
                    .onDisappear{
                        modelData.profile = draftprofile
                    }
            }
            
        }
        .padding()
        
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
