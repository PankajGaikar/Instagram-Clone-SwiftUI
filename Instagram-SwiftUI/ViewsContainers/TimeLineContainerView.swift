//
//  TimeLineView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct TimeLineContainerView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(MockData().stories) {
                            StoryView(story: $0)
                        }
                    }
                }
                ForEach(MockData().posts) {
                    PostView(post: $0, screenWidth: UIScreen.main.bounds.size.width)
                }
            }
            .navigationBarTitle("", displayMode: .inline)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 130)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "plus.app")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.trailing, 10)
                        NavigationLink(destination: MessagesContainerView()) {
                            Image(systemName: "message")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 25, height: 25)
                        }

                    }
                }
            })
        }
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineContainerView()
    }
}
