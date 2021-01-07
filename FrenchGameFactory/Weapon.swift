//
//  Weapon.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Weapon {
    //les arme heritent de la classe weapon
    let name: String
    var damage: Int
    
    //elles ont besoin de parametre pour etre initier
    init(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}
