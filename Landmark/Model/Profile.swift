//
//  Profile.swift
//  Landmark
//
//  Created by Sabal on 11/8/23.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()


    // made static inorder to pass the username to previews. Eg: in ProfileEditor.swift file see preview passed as .defailt as constant
    static let `default` = Profile(username: "Sabal")


    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"


        var id: String { rawValue }
    }
}
