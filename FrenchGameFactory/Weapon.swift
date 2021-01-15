//
//  Weapon.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Weapon {
    
    let name: String
    var damage: Int
    
    //need param to init
    init(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}
