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
    
    //func eneleve vie
    
    //func ajoute vie
    
    init(name: String, damage: Int) {
        self.name = name
        self.damage = damage
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

