//
//  TagButtonsList.swift
//  BlaBlaBla
//
//  Created by Student on 22.11.2023.
//

import SwiftUI

struct TagButtonsList: View {
//    var getListOfTags: ()->[String] = constantContainer.extract(key: "GetListOfTags");
    var tags: [String] = GetListOfTags();
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(0..<tags.count){
                    TagButton(
                        tag: tags[$0]
                    ).padding(11)
                }
            }
        }
    }
}

#Preview {
    TagButtonsList()
}
