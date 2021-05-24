//
//  ProfileView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct ProfileContainerView: View {
    let user: User = User(userName: "pankajgaikar", userImage: "user_16")
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ProfileHeader(user: user)
                    ProfileControlButtonsView()
                    ProfileMediaSelectionView()
                    PostGridView(posts: MockData().posts)
                }
            }
            .navigationBarTitle("", displayMode: .inline)
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Pankaj Gaikar")
                            .font(Font.system(size: 20, weight: .bold))
                            .padding()
                            .frame(width: UIScreen.main.bounds.size.width / 2, alignment: .leading)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Image(systemName: "plus.app")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding(.trailing, 10)
                            Image(systemName: "line.horizontal.3")
                                .resizable()
                                .frame(width: 25, height: 20)
                        }
                    }
                })
        }

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileContainerView()
        }
    }
}
