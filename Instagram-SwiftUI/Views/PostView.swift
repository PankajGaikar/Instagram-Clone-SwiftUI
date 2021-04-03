//
//  PostView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct PostView: View {
    
    let userName: String
    let profileImage: String
    let postImage: String
    let screenWidth: CGFloat
    
    var body: some View {
            VStack {
                
                //Post info.
                HStack {
                    Image(systemName: profileImage)
                    Text(userName)
                    Spacer()
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                .frame(height: 35)
                
                //Image.
                Image(postImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: screenWidth * 0.9, height: screenWidth)
                    .clipped()
                
                //Operations menu.
                HStack {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(2)
                    Image(systemName: "bubble.right")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(2)
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(2)
                    Spacer()
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 15, height: 20)
                }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(userName: "pankajgaikar", profileImage: "person.circle", postImage: "sample_post", screenWidth: 200)
    }
}
