//
//  Weapon.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Weapon {
    let category: String
    var hit: Int
    var heal: Int
    
    //
    
    init(category: String) {
            self.category = category
    }
    
}

class Bow: Weapon {
    //category = bow
    // hit = 50 degat
    //heal = 50 life
}

class Encyclopedia: Weapon {
    //category = encyclopedia
    // hit = 50 degat
    //heal = 50 life
}

class Gun: Weapon {
    //category = gun
    // hit = 80 degat
    //heal = 80 life
}
