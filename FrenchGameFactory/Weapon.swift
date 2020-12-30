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
    
    //func eneleve vie
    
    //func ajoute vie
    
    init(category: String) {
        self.category = category
    }
    
}

class Bow: Weapon {
    //category = bow
    // hit = 80 degat
    //heal = 50 life
    
    //func ArrowSupport : func ajouteVie = heal
    //func ArrowShoot : func enleveVie = hit
}

class Encyclopedia: Weapon {
    //category = encyclopedia
    // hit = 50 degat
    //heal = 70 life
    
    //func Anatomie : func ajouteVie = heal
    //func martialArt : func enleveVie = hit
}

class Gun: Weapon {
    //category = gun
    // hit = 80 degat
    
    //func headShoot : func enleveVie = hit
}
