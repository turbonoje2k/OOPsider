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
    
    
    func chooseTeam(nameTeam: String) -> Character {
        
        print("choose Your character" + "\n1. The gunner is 80 life he has a gun, make 80 damage" + "\n2. The Medic is 70 life he has a encyclopedia, make 80 damage" + "\n3. The hitman is 50 life he has a gun, make 80 damage" + "\n4. The engineer is 90 life he has a gun, make 80 damage")
        var teamNumber = 0
        print("choose Team")
        repeat {
            let team = Tools.shared.getInputInt()
            switch team {
            case 1:
                teamNumber += 1
                let character = Gunner(name: nameTeam)
                return character
            
            case 2:
                teamNumber += 1
                let character = Medic(name: nameTeam)
                return character
                
            case 3:
                teamNumber += 1
                let character = Hitman(name: nameTeam)
                return character
                
            case 4:
                teamNumber += 1
                let character = Engineer(name: nameTeam)
                return character
                
            default:
                print("You didn't choose a character")
            }
        } while teamNumber < 1

    }
    
    
    //func qui va creer 3 perso.count = 3
    // remplir array perso ac name(unique)
    // une fois array full init Player(arrayCharacter)
    func buildTeam() {
        print("choose you teammate")
        //var choiceCharater: [Character] = [Character]()
        
        //repeat chooseTeam()
        
        //while characterArray = 3
    }
}

