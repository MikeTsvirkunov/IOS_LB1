//
//  VariableContainer.swift
//  BlaBlaBla
//
//  Created by Student on 22.11.2023.
//

import Foundation


class VariableContainer: IExtandable, IExtractable{
    private var container: Dictionary<String, Any>;
    public init(container: Dictionary<String, Any>){
        self.container = container;
    }
    func extract<T>(key: String) -> T {
        return self.container[key] as! T;
    }
    func extend(key: String, value: Any) {
        container[key] = value;
    }
}
