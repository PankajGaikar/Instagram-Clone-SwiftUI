//
//  SearchView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ScrollView(.horizontal) {
                StoryView(userName: "pankaj", image: "sample_story")
            }
            PostView(userName: "Pankaj", profileImage: "sample_post", postImage: "sample_post", screenWidth: UIScreen.main.bounds.size.width)
        }
        .background(Color.red)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
