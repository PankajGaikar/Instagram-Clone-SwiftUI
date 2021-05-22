//
//  LinkedActivityView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 22/05/21.
//

import SwiftUI

struct LikedActivityView: View {
    
    let activity: Activity
    
    var body: some View {
        HStack {
            Image(activity.usersInContext.first!.userImage)
                .resizable()
                .cornerRadius(12.5)
                .frame(width: 25, height: 25, alignment: .center)
                .clipped()
            Text(activity.usersInContext.first!.userName)
                .font(Font.system(size: 14, weight: .semibold))
            + Text("")
            + Text(" and others liked your post.")
                .font(Font.system(size: 14, weight: .medium))
            Spacer()
            Image(activity.post.postImage)
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .clipped()

        }
        .padding()
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
    }
}

struct LikedActivityView_Previews: PreviewProvider {
    static var previews: some View {
        LikedActivityView(activity: Activity(activity: .liked,
                                             duration: "5h",
                                             usersInContext: [User(userName: "axeyked", userImage: "user_2")],
                                             post: Post(user: User(userName: "pankajgaikar", userImage: "sample_post") , postImage: "post_18", caption: "If any one attempts to haul down the American flag, shoot him on the spot.", likes: "leomessi and others liked")))
    }
}
