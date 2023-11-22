////
////  MainBlock.swift
////  BlaBlaBla
////
////  Created by Student on 21.11.2023.
////
//
import SwiftUI

struct GeneralDoctorBlock: View {
    var personImage: Image = variableContainer.extract(key: "CurrentDoctorImage")
    var currentDoctorNearestWindowImage: Image = constantContainer.extract(key: "GeneralDoctorNearestWindowImage")
    var currentDoctorWorkTimeImage: Image = constantContainer.extract(key: "GeneralDoctorWorkTime")
    var currentDoctorName: String = variableContainer.extract(key: "CurrentDoctorName")
    var currentDoctorNearestWindow: String = variableContainer.extract(key: "CurrentDoctorNearestWindow")
    var currentDoctorPost: String = variableContainer.extract(key: "CurrentDoctorPost")
    var currentDoctorWorkTime: String = variableContainer.extract(key: "CurrentDoctorWorkTime")
    var bgColor: Color = constantContainer.extract(key: "GeneralDoctorBGColor")
    var fgColor: Color = constantContainer.extract(key: "GeneralDoctorFGColor")
    
    var body: some View {
        ZStack{
            bgColor
            VStack{
                HStack{
                    ZStack{
                        Color.white
                        personImage.resizable()
                    }.frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading){
                        Text("\(currentDoctorName)")
                        Text("\(currentDoctorPost)")
                    }
                    
                    Spacer()
                    
                    Button{
                        print("Pressed")
                    } label: {
                        Image(systemName: "chevron.forward")
                    }
                }
                Spacer()
                HStack{
                    HStack{
                        currentDoctorNearestWindowImage
                        Text("Sunday, 12 june")
                    }
                    Spacer()
                    HStack{
                        currentDoctorWorkTimeImage
                        Text("\(currentDoctorWorkTime)")
                    }
                }
            }.padding(25)
        }.frame(height: 150).cornerRadius(15).padding().foregroundColor(fgColor)
    }
}

#Preview {
    GeneralDoctorBlock()
}
