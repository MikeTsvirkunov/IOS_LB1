//
//  ConstantContainer.swift
//  BlaBlaBla
//
//  Created by Student on 21.11.2023.
//

import Foundation

class ConstantContainer: IExtractable{
    private var container: Dictionary<String, Any>;
    public init(container: Dictionary<String, Any>){
        self.container = container;
    }
    func extract<T>(key: String) -> T {
        return self.container[key] as! T;
    }
}

