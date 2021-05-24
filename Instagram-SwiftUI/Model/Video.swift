//
//  Video.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 24/05/21.
//

import Foundation
import AVFoundation

struct Video : Identifiable {
    var id = UUID()
    var player : AVPlayer
    var likes: String
    var comments: String
    var caption: String
    var user: User
}
