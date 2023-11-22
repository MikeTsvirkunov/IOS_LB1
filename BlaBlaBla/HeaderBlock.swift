//
//  HeaderBlock.swift
//  BlaBlaBla
//
//  Created by Student on 21.11.2023.
//

import SwiftUI

struct HeaderBlock: View {
    var helloWord1: String = constantContainer.extract(key: "HelloWord1");
    var helloWord2: String = constantContainer.extract(key: "HelloWord2");
    var userName: String = getNameFunction();
    var helloWord1Color: Color = constantContainer.extract(key: "HelloWord1Color");
    var toolBarImage: Image = constantContainer.extract(key: "ToolBarImage")
    var body: some View {
        HStack(
            alignment: .top
        ){
            VStack(alignment: .leading){
                Text(helloWord1).foregroundColor(helloWord1Color)
                Text("\(helloWord2) \(userName)").font(.title.weight(.bold))
            }
            Spacer()
            toolBarImage.frame(width: 40, height: 40)
        }.frame(alignment: .top).padding(15)
    }
}

#Preview {
    HeaderBlock()
}
