//
//  ActivityView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(MockData().activity) {
                    if $0.activity == .liked {
                        LikedActivityView(activity: $0)
                    }
                    else {
                        Text("")
                    }
                }
            }
            .navigationBarTitle("", displayMode: .inline)
                .toolbar(content: {
                    Text("Activity")
                        .font(Font.system(size: 20, weight: .bold))
                        .padding()
                        .frame(width: UIScreen.main.bounds.size.width, alignment: .leading)
                })
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
