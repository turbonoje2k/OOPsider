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
        //utilise un foreach pour remplir character vivant
        print("yo")
        print(character[0])
        character.forEach { (character) in
            characterInLife.append(character)
        }
        
    }
    
    func printInLiveCharacter() {
        characterInLife.enumerated().forEach { (index, character) in
            print("\(index + 1): \(character.name) (\(character.type) \(character.life) HP - (\(character.weapon.damage) WP)") 
        }
    }
}
