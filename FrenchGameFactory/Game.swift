//
//  Game.swift
//  FrenchGameFactory
//
//  Created by noje on 07/01/2021.
//

import Foundation

class Game {
    
    func intro()    {
        print("welcome to OOPSIDER")
    }
    
    
    func chooseTeam(nameTeamMate: String) -> Character {
        
        print("choose Your character" + "\n1. 💂‍♀️ The gunner is 80 life he has a gun 🔫, make 80 damage" + "\n2. 🧑‍⚕️ The Medic is 70 life he has a encyclopedia📘, make 80 damage" + "\n3. 🥷 The hitman is 50 life he has a bow 🏹, make 50 damage" + "\n4. 👷‍♂️ The engineer is 90 life he has a hammer 🔨, make 60 damage")
        var teamNumber = 0
        print("choose a character")
        repeat {
            let team = Tools.shared.getInputInt()
            switch team {
            case 1:
                teamNumber += 1
                let character = Gunner(name: nameTeamMate)
                return character
            
            case 2:
                teamNumber += 1
                let character = Medic(name: nameTeamMate)
                return character
                
            case 3:
                teamNumber += 1
                let character = Hitman(name: nameTeamMate)
                return character
                
            case 4:
                teamNumber += 1
                let character = Engineer(name: nameTeamMate)
                return character
                
            default:
                print("You didn't choose a character")
            }
        } while teamNumber < 1

    }
    
    
    //func creat 3 character with name
    // append array with character
    // when array full init Player(arrayCharacter)
    func buildTeam() {
        
        var arrayOfCharacter: [Character] = [Character]()
        
        repeat {
            arrayOfCharacter.append(chooseTeam(nameTeamMate: String))
        } while arrayOfCharacter.count <= 3
        print("your team = \(arrayOfCharacter)")
        
   }
}

