//
//  Story.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 04/04/21.
//

import Foundation

struct Story: Identifiable {
    var id = UUID()
    var userName: String
    var image: String
    var hasSeen: Bool = false
    var isMyStory: Bool = false
}
