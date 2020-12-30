//
//  Character.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

class Character {
    let type: String
    let name: String
    var life: Int
    var weapon: Weapon
    
    init(type: String, name: String, weapon: Weapon, life: Int) {
        self.type = type
        self.name = name
        self.weapon = weapon
        self.life = life
    }
    
    //func atk
    
    //func heal
    
    //func upLife
    
    //func dgt
}



class Engineer: Character {
    //life = 50
    //hit = 90
}

class Hitman: Character {
    //life = 100
    //hit = 50
    //heal = 50
}

class Medic: Character {
    //life = 100
    //heal = 70
}