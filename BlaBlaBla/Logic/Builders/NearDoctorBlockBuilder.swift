//
//  NearDoctorBlockBuilder.swift
//  BlaBlaBla
//
//  Created by Student on 22.11.2023.
//

import Foundation
import SwiftUI


class NearDoctorBlockBuilder{
    private var data: Dictionary<String, String>
    init(data: Dictionary<String, String>) {
        self.data = data
    }
    func build() -> NearDoctorBlock{
        let getImageFunction: (String) -> Image = constantContainer.extract(key: "GetDoctorImage")
        
        return NearDoctorBlock(
            doctorImage: getImageFunction(data["id"]!),
            doctorName: data["doctor_name"]!,
            doctorPost: data["post"]!,
            openTime: data["open_at"]!,
            reviewScore: data["raiting"]!,
            reviewsCount: data["reviews_count"]!,
            distance: data["distance"]!
        )
    }
}
