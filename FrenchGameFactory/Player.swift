//
//  Player.swift
//  FrenchGameFactory
//
//  Created by noje on 30/12/2020.
//

import Foundation

class Player {
    
    var characterInLife: [Character] = [Character]()
    var characterDead: [Character] = [Character]()
    var numberOfCharacterDies: Int = 0
    
    init(character: [Character]) {
        //use foreach to append array of character in life
        print("yo")
        print(character[0])
        character.forEach { (character) in
            characterInLife.append(character)
        }
        
    }
    //create func to stcck characters in live in array
    func printInLiveCharacter() {
        characterInLife.enumerated().forEach { (index, character) in
            print("\(index + 1): \(character.name) \(character.type) \(character.life) HP - (\(character.weapon.damage) WP)")
        }
    }
    //create a func to stock character in a array
    func printDeadCharacter() {
        characterDead.enumerated().forEach { (index, character) in
            print("\(index + 1): \(character.name) (\(character.type) \(character.life) HP - (\(character.weapon.damage) WP)")
            
        }
    }
}
