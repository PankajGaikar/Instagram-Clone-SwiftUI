//
//  TimeLineView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct TimeLineView: View {
    
    var body: some View {
        VStack {
            HStack {
                Image("instagram")
                    .resizable()
                    .frame(width: 130, height: 45)
                Spacer()
                Image(systemName: "plus.square.on.square")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.trailing, 10)
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            .padding(5)
            .frame(height: 50)
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<30) {_ in
                            StoryView(userName: "pankaj", image: "sample_story")
                                .padding(5)
                        }
                    }
                }
                PostView(userName: "Pankaj", profileImage: "sample_post", postImage: "sample_post", screenWidth: UIScreen.main.bounds.size.width)
            }
        }
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView()
    }
}
