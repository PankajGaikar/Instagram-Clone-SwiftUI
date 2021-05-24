//
//  StoryView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct StoryView: View {
    let story: Story
    var gradient = Gradient(colors: [.yellow, .red, .purple, .orange, .pink, .red])
    
    var body: some View {
        
        //Stories
        VStack {
            Image(story.user.userImage)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(30)
                .overlay(Circle().stroke(LinearGradient( gradient: gradient, startPoint: .bottomLeading, endPoint: .topTrailing) , style: StrokeStyle(lineWidth: 2.5, lineCap: .round)))
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
