//
//  Gunner.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Gunner: Character {
    static let type = "💂‍♀️ Gunner"
    static let life = 80
    static let weapon = Gun()
 
    init(name: String) {
        super.init(type: "💂‍♀️ Gunner", name: name, weapon: Gun(), life: 80)
    }
}
