//
//  ReelsView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI
import AVKit

struct ReelsContainerView: View {
    
    @State var index = 0
    @State var top = 0
    @State var videos = MockData().videos
    
    var body: some View{
        ZStack{
            PlayerPageView(videos: self.$videos)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ReelsView_Previews: PreviewProvider {
    static var previews: some View {
        ReelsContainerView()
    }
}
