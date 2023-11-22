//
//  NearstDoctorBlocksList.swift
//  BlaBlaBla
//
//  Created by Student on 22.11.2023.
//

import SwiftUI

struct NearstDoctorBlocksList: View {
    var nearestDoctors: [Dictionary<String, String>]
    init(){
        var getNearestDoctors: () -> [Dictionary<String, String>] = constantContainer.extract(key: "GetNearestDoctors")
        self.nearestDoctors = getNearestDoctors()
    }
    var body: some View {
        VStack{
            ForEach(0..<self.nearestDoctors.count){
                NearDoctorBlockBuilder(data: nearestDoctors[$0]).build()
            }
        }
    }
}

#Preview {
    NearstDoctorBlocksList()
}
