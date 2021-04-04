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
            Image(story.image)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .cornerRadius(40)
                .overlay(RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.orange, lineWidth: 4))
            Text(story.userName)
        }
        .frame(height: 115)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: MockData().stories.first!)
    }
}
