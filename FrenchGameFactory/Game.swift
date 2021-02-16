//
//  Game.swift
//  FrenchGameFactory
//
//  Created by noje on 07/01/2021.
//

import Foundation

class Game {
    
    private var playerOne: Player?
    private var playerTwo: Player?
    
    private var playerTurn: Player?
    private var playerNotTurn: Player?
    
    private var asAllreadyChooseMedic: Bool = false
    
    private var isPlayerOneTurn: Bool = true
    
    private var playerTurnSelectedCharacter: Character?
    private var playerNotTurnSelectedCharacter: Character?
    
    func intro()    {
        print("welcome to OOPSIDER")
    }
    
    func chooseTeam(nameTeamMate: String) -> Character {
        if !asAllreadyChooseMedic {
            print("choose Your character"
                    + "\n1. 💂‍♀️ The gunner is 80 life he has a gun 🔫, make 80 damage"
                    + "\n2. 🧑‍⚕️ The Medic is 70 life he has a encyclopedia📘, make 80 damage or heal"
                    + "\n3. 🥷 The hitman is 50 life he has a bow 🏹, make 50 damage"
                    + "\n4. 👷‍♂️ The engineer is 90 life he has a hammer 🔨, make 60 damage")
        } else {
            print("choose Your character"
                    + "\n1. 💂‍♀️ The gunner is 80 life he has a gun 🔫, make 80 damage"
                    + "\n3. 🥷 The hitman is 50 life he has a bow 🏹, make 50 damage"
                    + "\n4. 👷‍♂️ The engineer is 90 life he has a hammer 🔨, make 60 damage")
        }
        var teamNumber = 0
        print("choose a character")
        repeat {
            let team = Tools.shared.getInputInt()
            switch team {
            case 1:
                teamNumber += 1
                let character = Gunner(name: nameTeamMate)
                return character
                
            case 2 where !asAllreadyChooseMedic:
                asAllreadyChooseMedic = true
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
                if !asAllreadyChooseMedic && team < 1 || team > 4   {
                    print("You didn't choose a character")
                } else {
                    print("Not possible to have two medics per team")
                }
            }
        } while teamNumber < 1
        
    }
    
    func buildTeam(numberofPlayer: Int) -> [Player] {
        
        var count = 0
        var arrayOfPlayer: [Player]  = [Player]()
        
        repeat {
            var arrayOfNames: [String] = [String]()
            var arrayOfCharacter: [Character] = [Character]()
            
            repeat {
                print("\n Player \(arrayOfPlayer.count+1) -> Choose Name of your Characters \(arrayOfCharacter.count+1) : ")
                var check: Bool = false
                
                repeat {
                    let name = Tools.shared.getInputString()
                    if !arrayOfNames.contains(name) {
                        check.toggle()//change state of check 
                        arrayOfCharacter.append(chooseTeam(nameTeamMate: name))
                        arrayOfNames.append(name)
                    } else {
                        print("❌\(name) is already taken⁉️")
                    }
                } while check == false
                
                
            } while arrayOfCharacter.count < 3
            if arrayOfCharacter.count == 3 {
                count = 0
            }
            asAllreadyChooseMedic = false
            print(arrayOfCharacter[0].type, arrayOfNames[0], arrayOfCharacter[1].type, arrayOfNames[1], arrayOfCharacter[2].type, arrayOfNames[2])
            
            let createdPlayer = Player(character: arrayOfCharacter)
            count += 1
            arrayOfPlayer.append(createdPlayer)
            print(createdPlayer.printInLiveCharacter())
        } while numberofPlayer > arrayOfPlayer.count
        
        return arrayOfPlayer
        
    }
    
    func selectCharacter() {
        //        if isPlayerOneTurn {
        //            playerTurn = playerOne
        //        } else {
        //            playerTurn = playerTwo
        //        }
        
        let players = buildTeam(numberofPlayer: 2)
        
        playerOne = players[0]
        playerTwo = players[1]
        
        playerTurn = (isPlayerOneTurn) ? playerOne : playerTwo
        playerNotTurn = (isPlayerOneTurn) ? playerTwo : playerOne
        
        if isPlayerOneTurn {
            print("\n Player 1 : Choose a character")
        } else {
            print("\n Player 2 : Choose a character")
        }
        
        playerTurn?.printInLiveCharacter()
        print("Select your Warrior ")
        
        //call func select atack
        selectAttacker()
        
        playerNotTurn?.printInLiveCharacter()
        print("select your target 🎯")
        selectTarget()
        
        guard let playerTurnSelectedCharacter = playerTurnSelectedCharacter else { return }
        
        // verifier cette var ac guardlet !!!
        playerTurnSelectedCharacter.attack(target: playerNotTurnSelectedCharacter!, player: playerNotTurn!)
        //guard let playerNotTurnSelecedCharacter
    }
    
    func selectAttacker() {
        //select your teamate
        var index : Int = Int()
        
        //check optionnal
        guard let playerTurnVerify = playerTurn else { return }
        // /!\ index array 123 != 012
        let indexMax: Int = playerTurnVerify.characterInLife.count - 1
        let indexMin: Int = playerTurnVerify.characterInLife.count - (playerTurnVerify.characterInLife.count - 1) - 1
        
        repeat {
        
        //recup choix index.Tools.shared
        index = Tools.shared.getInputInt() - 1
            if index < indexMin || index > indexMax {
                print("Number should be \(indexMin + 1) and \(indexMax + 1) ")
            }
        
        } while index < indexMin || index > indexMax
            
        
        playerTurnSelectedCharacter = playerTurnVerify.characterInLife[index]
        print(playerTurnSelectedCharacter!.name)
    }
    
    func selectTarget() {
        //same func as selectAttacker
        //use var playerNotTurnSelectedCharacter
        var index : Int = Int()
        
        //check optionnal
        guard let playerNotTurnVerify = playerNotTurn else { return }
        // /!\ index array 123 != 012
        let indexMax: Int = playerNotTurnVerify.characterInLife.count - 1
        let indexMin: Int = playerNotTurnVerify.characterInLife.count - (playerNotTurnVerify.characterInLife.count - 1) - 1
        
        repeat {
        
        //recup choix index.Tools.shared
        index = Tools.shared.getInputInt() - 1
            if index < indexMin || index > indexMax {
                print("Number should be \(indexMin + 1) and \(indexMax + 1) ")
            }
        
        } while index < indexMin || index > indexMax
            
        
        playerNotTurnSelectedCharacter = playerNotTurnVerify.characterInLife[index]
        print(playerNotTurnSelectedCharacter!.name)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //    func selectCharacter() {
    //        //select ally or enemy to hit or heal
    //        print("Select an Ally or an Enemy"
    //            + "Your teammate"
    //            + "\n1. \(arrayOfCharacter[0].type, arrayOfNames[0])"
    //            + "\n2. \(arrayOfCharacter[1].type, arrayOfNames[1])"
    //            + "\n3. \(arrayOfCharacter[2].type, arrayOfNames[2])"
    //            + "Your Enemies"
    //            + "\n2. \(arrayOfCharacter[0].type, arrayOfNames[0])"
    //            + "\n5. \(arrayOfCharacter[1].type, arrayOfNames[1])"
    //            + "\n6. \(arrayOfCharacter[2].type, arrayOfNames[2])"
    //            )
    //
    //        switch partyTurn {
    //        case 1:
    //
    //        case 2:
    //
    //        case 3:
    //
    //
    //        case 4:
    //
    //        case 5:
    //
    //        case 6:
    //
    //        default:
    //            print("")
    //
    //
    //
    //    }
}




