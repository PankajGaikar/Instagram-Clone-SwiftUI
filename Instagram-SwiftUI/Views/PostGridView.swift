//
//  PostGridView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 23/05/21.
//

import SwiftUI

struct PostGridView: View {
    
    let posts: [Post]
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(posts) {
                Image($0.postImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.size.width / 3, height: UIScreen.main.bounds.size.width / 3)
                    .clipped()
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(posts: MockData().posts)
    }
}
