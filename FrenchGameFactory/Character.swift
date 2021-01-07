//
//  Character.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

class Character {
    //chaque guss partagent des attributs
    let type: String
    let name: String
    var life: Int
    var weapon: Weapon
    
    //on init nos objet avec ces parametres
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
