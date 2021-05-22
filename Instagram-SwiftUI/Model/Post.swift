//
//  Post.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 04/04/21.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let user: User
    let postImage: String
    let caption: String
    let likes: String
    let hasLiked: Bool = false
    let hasBookmarked: Bool = false
}
