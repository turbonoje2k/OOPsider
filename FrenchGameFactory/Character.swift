//
//  Character.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

class Character {
    
    //each objets from Character share properties and methode from
    let type: String
    let name: String
    var life: Int
    var weapon: Weapon
    
    //init each character as object from Character with all properties
    init(type: String, name: String, weapon: Weapon, life: Int) {
        self.type = type
        self.name = name
        self.weapon = weapon
        self.life = life
    }
    
    //func fight your ennemy
    func attack(target: Character, player: Player) {
        //damage on target = weapon damage
        target.life -= weapon.damage
        print("\(name) attack \(target.name) and inflicts \(weapon.damage) damages. \(target.name) has now \(target.life) PV")
        // if death = death
        if target.life <= 0 {
            target.life = 0
            print("\(target.name) is dead")
            player.numberOfCharacterDies += 1
            player.characterInLife.removeAll { (character) -> Bool in
                return target.name == character.name ? true : false
            }
            player.characterDead.append(target)
        }
    }
    
    //func heal your ally
    func heal(target: Character) {
        target.life -= weapon.damage
        print("\(name) heal \(target.name) and give \(weapon.damage) PV. to \(target.name) has now \(target.life) PV")
    }
}
