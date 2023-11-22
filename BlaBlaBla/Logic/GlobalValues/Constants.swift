//
//  Constants.swift
//  BlaBlaBla
//
//  Created by Student on 21.11.2023.
//

import Foundation
import SwiftUI

var constantContainer = ConstantContainer(
    container: [
        // String
        "HelloWord1": "Hello,",
        "HelloWord2": "Hi",
        "MainSearchBarDefaultText": "Search doctor or health issue",
        "TagsBarTagNamePairs": [
            "Doctor": "Doctor",
            "Hospital": "Hospital",
            "Covid 19": "Covid 19",
            "Medicine": "Medicine"
        ],
        // Functions
        "GetName": getNameFunction,
        "GetListOfTags": GetListOfTags,
        "GetNearestDoctors": GetNearestDoctors,
        "GetDoctorImage": GetDoctorImage,
        // Colors
        "GeneralDoctorFGColor": Color(red: 1, green: 1, blue: 1, opacity: 1),
        "GeneralDoctorBGColor": Color(red: 72/255, green: 148/255, blue: 254/255),
        "NearDoctorBlockRaitingColor": Color(red: 254/255, green: 176/255, blue: 82/255, opacity: 1),
        "NearDoctorBlockOpenTimeColor": Color(red: 72/255, green: 148/255, blue: 254/255, opacity: 1),
        "HelloWord1Color": Color(red: 134/255, green: 150/255, blue: 187/255, opacity: 1),
        "DefaultBGColorForActiveElements": Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1),
        "MainSearchBarBGColor": Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1),
        "TagBGColors": [
            "Doctor": Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1),
            "Hospital": Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1),
            "Covid 19": Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1),
            "Medicine": Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1)
        ],
        "TagFGColors": [
            "Doctor": Color(red: 72/255, green: 148/255, blue: 254/255, opacity: 1),
            "Hospital": Color(red: 72/255, green: 148/255, blue: 254/255, opacity: 1),
            "Covid 19": Color(red: 72/255, green: 148/255, blue: 254/255, opacity: 1),
            "Medicine": Color(red: 72/255, green: 148/255, blue: 254/255, opacity: 1)
        ],
        "TagTextColors": [
            "Doctor": Color(red: 134/255, green: 150/255, blue: 187/255, opacity: 1),
            "Hospital": Color(red: 134/255, green: 150/255, blue: 187/255, opacity: 1),
            "Covid 19": Color(red: 134/255, green: 150/255, blue: 187/255, opacity: 1),
            "Medicine": Color(red: 134/255, green: 150/255, blue: 187/255, opacity: 1)
        ],
        "MainSearchBarDefaultFGColor": Color(red: 134/255, green: 150/255, blue: 187/255, opacity: 1),
        "MainSearchBarDefaultBGColor": Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1),
        // Images
        "ToolBarImage": Image("HeaderImage"),
        "TagsBarTagImagePairs": [
            "Doctor": Image(systemName: "person.fill"),
            "Hospital": Image(systemName: "building.fill"),
            "Covid 19": Image(systemName: "microbe.fill"),
            "Medicine": Image(systemName: "pill.fill")
        ],
        "GeneralDoctorNearestWindowImage": Image(systemName: "calendar"),
        "GeneralDoctorWorkTime": Image(systemName: "calendar"),
        "MainSearchBarDefaultImage": Image(systemName: "magnifyingglass"),
        "NearDoctorBlockRaitingImage": Image(systemName: "clock"),
        "NearDoctorBlockOpenTimeImage": Image(systemName: "clock"),
        "NearDoctorBlockPlaceImage": Image(systemName: "mappin"),
    ]
)
