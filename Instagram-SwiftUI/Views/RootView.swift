//
//  ContentView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            TimeLineView()
                .padding()
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .tag(1)
            SearchView()
                .padding()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(2)
            ReelsView()
                .padding()
                .tabItem {
                    Image(systemName: "film")
                }
                .tag(2)
            ActivityView()
                .padding()
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(2)
            ProfileView()
                .padding()
                .tabItem {
                    Image(systemName: "person.circle")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
