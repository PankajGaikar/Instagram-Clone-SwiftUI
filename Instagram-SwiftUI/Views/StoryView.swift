//
//  StoryView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct StoryView: View {
    let story: Story

    var body: some View {
        
        //Stories
        VStack {
            Image(story.user.userImage)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(30)
                .overlay(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.orange, lineWidth: 3))
                .padding([.top, .horizontal], 5)
            Text(story.user.userName)
                .truncationMode(.tail)
                .font(.caption2)
                .frame(width: 80, height: 15)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: MockData().stories.first!)
    }
}
