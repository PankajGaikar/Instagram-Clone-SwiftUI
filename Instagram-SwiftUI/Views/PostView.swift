//
//  PostView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct PostView: View {
    
    let post: Post
    let screenWidth: CGFloat
    
    var body: some View {
        VStack {
            
            //Post info.
            HStack {
                Image(systemName: post.userImage)
                    .padding(.leading, 10)
                Text(post.userName)
                Spacer()
                Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.trailing, 10)
            }
            .frame(height: 35)
            
            //Image.
            Image(post.postImage)
                .resizable()
                .scaledToFill()
                .frame(width: screenWidth, height: screenWidth * 1.1)
                .clipped()
            
            //Operations menu.
            HStack {
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(5)
                    .padding(.leading, 10)
                Image(systemName: "bubble.right")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(5)
                Image(systemName: "paperplane")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(5)
                Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 15, height: 20)
                    .padding(5)
                    .padding(.trailing, 10)
            }
            VStack(alignment: .leading, spacing: 0){
                
                Group {
                    Text(post.userName)
                        .font(Font.system(size: 14, weight: .semibold))
                        + Text(" ")
                        + Text(post.caption)
                        .font(Font.system(size: 14))
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 6)
            }
            Text(post.likes)
                .font(Font.system(size: 14, weight: .semibold))
                .padding(.horizontal, 15)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            PostView(post: MockData().posts.first!, screenWidth: geometry.size.width)
        }
    }
}
