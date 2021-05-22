//
//  SearchView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

let columns = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible()),
]

struct SearchView: View {
    
    let cars: [String] = []
    @State private var searchText : String = ""

    var body: some View {
        ScrollView {
            SearchBar(text: $searchText, placeholder: "Search")

            LazyVGrid(columns: columns) {
                ForEach(MockData().posts) {
                    Image($0.postImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.size.width / 3, height: UIScreen.main.bounds.size.width / 3)
                        .clipped()
                }
                ForEach(MockData().posts) {
                    Image($0.postImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.size.width / 3, height: UIScreen.main.bounds.size.width / 3)
                        .clipped()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
