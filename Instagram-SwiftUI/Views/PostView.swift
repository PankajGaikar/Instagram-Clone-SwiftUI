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
                        .padding(.leading, 10)
                    Text(userName)
                    Spacer()
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(.trailing, 10)
                }
                .frame(height: 35)
                
                //Image.
                Image(postImage)
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
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            PostView(userName: "pankajgaikar", profileImage: "person.circle", postImage: "sample_post", screenWidth: geometry.size.width)
        }
    }
}
