//
//  Medic.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Medic: Character {
    static let type = "🧑‍⚕️ Medic"
    static let life = 70
    static let weapon = Encyclopedia()
 
    init(name: String) {
        super.init(type: "🧑‍⚕️ Medic", name: name, weapon: Encyclopedia(), life: 70)
    }
    
//    override func heal(target: Character, player: Player) {
//        <#code#>
//    }
}
