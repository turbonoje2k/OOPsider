//
//  Engineer.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Engineer: Character {
    static let type = "👷‍♂️ Engineer"
    static let life = 90
    static let weapon = Hammer()
 
    init(name: String) {
        super.init(type: "👷‍♂️ Engineer", name: name, weapon: Hammer(), life: 90)
    }
}
