//
//  Hitman.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Hitman: Character {
    static let type = "Hitman"
    static let life = 50
    static let weapon = Bow()
 
    init(name: String) {
        super.init(type: "Hitman", name: name, weapon: Bow(), life: 50)
    }
}
