//
//  IExtractable.swift
//  BlaBlaBla
//
//  Created by Student on 21.11.2023.
//

import Foundation


protocol IExtractable{
    func extract<T>(key: String) -> T;
}
