//
//  Activity.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 22/05/21.
//

import Foundation

enum activityType {
    case liked
    case newFollower
    case suggestFollower
    case comment
}

struct Activity: Identifiable {
    let id = UUID()
    let activity: activityType
    let duration: String //Easier to show on UI.
    let usersInContext: [User]
    let post: Post
    var comment: String = ""

    func getUsernames() -> String {
        return usersInContext.map{$0.userName}.joined(separator: ", ")
    }
}
