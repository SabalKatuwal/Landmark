//
//  ProfileHost.swift
//  Landmark
//
//  Created by Sabal on 11/8/23.
//
//if editMode?.wrappedValue == .active {
//                   Button("Cancel", role: .cancel) {
//                       draftProfile = modelData.profile
//                       editMode?.animation().wrappedValue = .inactive
//                   }
//               }
import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftprofile = Profile.default
    
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
