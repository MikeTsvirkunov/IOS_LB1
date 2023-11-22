//
//  TagButton.swift
//  BlaBlaBla
//
//  Created by Student on 22.11.2023.
//

import SwiftUI

struct TagButton: View {
    var tag: String
    var bgPairs: [String: Color] = constantContainer.extract(key: "TagBGColors")
    var fgPairs: [String: Color] = constantContainer.extract(key: "TagFGColors")
    var textFGPairs: [String: Color] = constantContainer.extract(key: "TagTextColors")
    var imagePairs: [String: Image] = constantContainer.extract(key: "TagsBarTagImagePairs")
    var namePairs: [String: String] = constantContainer.extract(key: "TagsBarTagNamePairs")
    var defaultBgColor: Color = constantContainer.extract(key: "DefaultBGColorForActiveElements")
    
    var bg: Color
    var fg: Color
    var textColor: Color
    var tag_name: String
    var tag_image: Image
    init(tag: String){
        self.tag = tag
        self.bg = self.bgPairs[tag] ?? defaultBgColor
        self.fg = self.fgPairs[tag] ?? defaultBgColor
        self.textColor = self.textFGPairs[tag] ?? defaultBgColor
        self.tag_image = self.imagePairs[tag]!
        self.tag_name = self.namePairs[tag]!
    }
    var body: some View {
        VStack{
            ZStack{
                bg
                tag_image.foregroundColor(fg)
            }.frame(
                width: 70,
                height: 70
            ).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(tag_name).foregroundStyle(textColor)
        }
    }
}

#Preview {
    TagButton(
        tag: "Doctor"
    )
}
