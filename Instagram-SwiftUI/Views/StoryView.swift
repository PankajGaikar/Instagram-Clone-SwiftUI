//
//  StoryView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct StoryView: View {
    let userName: String
    let image: String
    

    var body: some View {
        
        //Stories
        VStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .cornerRadius(40)
                .overlay(RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.orange, lineWidth: 4))
            Text(userName)
        }
        .frame(height: 115)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(userName: "pankajgaikar", image: "sample_story")
    }
}
