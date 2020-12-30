//
//  Engineer.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Engineer: Character {
    static let type = "Engineer"
    static let life = 90
    static let weapon = Encyclopedia()
 
    init(name: String) {
        super.init(type: "Engineer", name: name, weapon: Encyclopedia(), life: 90)
    }
}
