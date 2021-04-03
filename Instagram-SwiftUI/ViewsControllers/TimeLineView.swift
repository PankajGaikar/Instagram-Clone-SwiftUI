//
//  TimeLineView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct TimeLineView: View {
    
    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
        UITableView.appearance().separatorStyle = .none
    }

    var body: some View {
        VStack {
            
            //Navigation Bar
            HStack {
                Image("instagram")
                    .resizable()
                    .frame(width: 150, height: 35)
                Spacer()
                Image(systemName: "plus.square.on.square")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.trailing, 10)
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            .padding([.leading, .trailing], 5)
            .frame(height: 35, alignment: .top)
            
            //Stories
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<30) { _ in
                        StoryView(userName: "pankajgaikar", image: "sample_story")
                    }
                }
            }
            .padding([.leading, .trailing], 5)
            GeometryReader { geometry in
                List() {
                    PostView(userName: "pankajgaikar", profileImage: "person.circle", postImage: "sample_post", screenWidth: geometry.size.width)
                    PostView(userName: "pankajgaikar", profileImage: "person.circle", postImage: "sample_post", screenWidth: geometry.size.width)
                    PostView(userName: "pankajgaikar", profileImage: "person.circle", postImage: "sample_post", screenWidth: geometry.size.width)
                    PostView(userName: "pankajgaikar", profileImage: "person.circle", postImage: "sample_post", screenWidth: geometry.size.width)
                }
            }
        }
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView()
    }
}
