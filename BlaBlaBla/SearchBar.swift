//
//  SearchBar.swift
//  BlaBlaBla
//
//  Created by Student on 22.11.2023.
//

import SwiftUI

struct SearchBar: View {
    @State private var st = "";
    var defaultString: String = constantContainer.extract(key: "MainSearchBarDefaultText")
    var searchImage: Image = constantContainer.extract(key: "MainSearchBarDefaultImage")
    var fgColor: Color = constantContainer.extract(key: "MainSearchBarDefaultFGColor")
    var bgColor: Color = constantContainer.extract(key: "MainSearchBarDefaultBGColor")
    var body: some View {
        ZStack{
            bgColor
            HStack{
                searchImage.padding()
                TextField(
                    "\(defaultString)",
                    text: $st
                ).foregroundColor(fgColor)
            }
        }.frame(height: 50).cornerRadius(10).padding()
    }
}

#Preview {
    SearchBar()
}
