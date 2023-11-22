//
//  NearDoctorBlock.swift
//  BlaBlaBla
//
//  Created by Student on 22.11.2023.
//

import SwiftUI

struct NearDoctorBlock: View {
    var doctorImage: Image
    var doctorName: String
    var doctorPost: String
    var openTime: String
    var reviewScore: String
    var reviewsCount: String
    var distance: String
    var measure: String = variableContainer.extract(key: "Measure")
    var raitingImage: Image = constantContainer.extract(key: "NearDoctorBlockRaitingImage")
    var openTimeImage: Image = constantContainer.extract(key: "NearDoctorBlockOpenTimeImage")
    var placeImage: Image = constantContainer.extract(key: "NearDoctorBlockPlaceImage")
    var openTimeColor: Color = constantContainer.extract(key: "NearDoctorBlockOpenTimeColor")
    var raitingColor: Color = constantContainer.extract(key: "NearDoctorBlockRaitingColor")
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Color.white
                    doctorImage.resizable()
                }.frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    Text(doctorName)
                    Text(doctorPost)
                }
                Spacer()
                
                placeImage.frame(
                    width: 50,
                    height: 50
                )
                Text("\(distance) \(measure)")
            }
            Spacer()
            HStack{
                HStack{
                    raitingImage
                    Text("\(reviewScore) (\(reviewsCount) Reviews)").foregroundColor(raitingColor)
                }.foregroundColor(raitingColor)
                Spacer()
                HStack{
                    openTimeImage
                    Text("Open at \(openTime)")
                }.foregroundColor(openTimeColor)
            }.padding(25)
        }.frame(height: 150).cornerRadius(15).padding()
    }
}

#Preview {
    NearDoctorBlock(
        doctorImage: Image("Person"),
        doctorName: "Dr. Imaran Syahir",
        doctorPost: "General Doctor",
        openTime: "17:00",
        reviewScore: "4,8",
        reviewsCount: "120",
        distance: "1.2"
    )
}
