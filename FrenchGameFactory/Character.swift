//
//  Character.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

class Character {
    var name: String
    var life: Int
    var hit: Int
    // var weapon: Weapon
    
    init(name: String, life: Int) {
        self.name = name
        self.life = life
    }
    
    //func atk
    
    //func heal
    
    //func upLife
    
    //func dgt
}

class Gunner: Character {
//    gunner.life = 90
//    gunner.hit = 80
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




