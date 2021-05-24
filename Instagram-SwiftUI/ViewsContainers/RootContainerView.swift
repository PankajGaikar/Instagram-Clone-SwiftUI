//
//  ContentView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct RootContainerView: View {
    @State private var selectedView = 0

    var body: some View {
        TabView(selection: $selectedView) {
            TimeLineContainerView()
                .tabItem {
                    selectedView == 0 ?
                        Image(systemName: "house.fill") : Image(systemName: "house")
                }
                .tag(0)
            SearchContainerView()
                .tabItem {
                    selectedView == 1 ? Image(systemName: "magnifyingglass") : Image(systemName: "magnifyingglass")
                }
                .tag(1)
            ReelsContainerView()
                .tabItem {
                    selectedView == 2 ? Image(systemName: "film.fill") : Image(systemName: "film")
                }
                .tag(2)
            ActivityContainerView()
                .tabItem {
                    selectedView == 3 ? Image(systemName: "heart.fill") : Image(systemName: "heart")
                }
                .tag(3)
            ProfileContainerView()
                .tabItem {
                    selectedView == 4 ? Image(systemName: "person.circle.fill") : Image(systemName: "person.circle")
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootContainerView()
    }
}
