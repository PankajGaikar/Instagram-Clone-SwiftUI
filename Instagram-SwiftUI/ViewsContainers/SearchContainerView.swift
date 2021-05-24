//
//  SearchView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct SearchContainerView: View {
    
    private let searchStrings: [String] = []
    @State private var searchText : String = ""

    var body: some View {
        ScrollView {
            SearchBar(text: $searchText, placeholder: "Search")
            PostGridView(posts: MockData().posts)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchContainerView()
    }
}
