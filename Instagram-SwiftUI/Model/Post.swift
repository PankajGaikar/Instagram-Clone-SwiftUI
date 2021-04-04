//
//  Post.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 04/04/21.
//

import Foundation

struct Post: Identifiable {
    var id = UUID()
    var userName: String
    var userImage: String
    var postImage: String
    var caption: String
    var likes: String
    var hasLiked: Bool = false
    var hasBookmarked: Bool = false
}
