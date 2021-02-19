//
//  Game.swift
//  FrenchGameFactory
//
//  Created by noje on 07/01/2021.
//

import Foundation

class Game {
    
    //var to stock a Player
    private var playerOne: Player?
    private var playerTwo: Player?
    
    //var to know which player play
    private var playerTurn: Player?
    private var playerNotTurn: Player?
    
    //only One medic per team in One Var
    private var asAllreadyChooseMedic: Bool = false
    
    //var to know wich player One or Two play
    private var isPlayerOneTurn: Bool = true
    
    //array to stock character of player turn and not turn
    private var playerTurnSelectedCharacter: Character?
    private var playerNotTurnSelectedCharacter: Character?

    
    //Make a splach screen
    func intro()    {
        print("Welcome to "
                + "\n _______  _______  _______  _______  ___   ______   _______  ______"
                + "\n|       ||       ||       ||       ||   | |      | |       ||    _ |"
                + "\n|   _   ||   _   ||    _  ||  _____||   | |  _    ||    ___||   | ||"
                + "\n|  | |  ||  | |  ||   |_| || |_____ |   | | | |   ||   |___ |   |_||_"
                + "\n|  |_|  ||  |_|  ||    ___||_____  ||   | | |_|   ||    ___||    __  |"
                + "\n|       ||       ||   |     _____| ||   | |       ||   |___ |   |  | |"
                + "\n|_______||_______||___|    |_______||___| |______| |_______||___|  |_|")
    }
   
    //func to select your teammate
    func chooseTeam(nameTeamMate: String) -> Character {
        if !asAllreadyChooseMedic {
            print("choose the type of your character"
                    + "\n1. 💂‍♀️ The gunner is 80 life he has a gun 🔫, make 80 damage"
                    + "\n2. 🧑‍⚕️ The Medic is 70 life he has a encyclopedia📚, make 80 damage or heal"
                    + "\n3. 🥷 The hitman is 50 life he has a bow 🏹, make 50 damage"
                    + "\n4. 👷‍♂️ The engineer is 90 life he has a hammer 🔨, make 60 damage")
        } else {
            print("choose the type of your character"
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
    
    //make a team, team =Player = [character]
    func buildTeam(numberOfPlayer: Int) -> [Player] {
        
        var count = 0
        var arrayOfPlayer: [Player]  = [Player]()
        
        repeat {
            var arrayOfNames: [String] = [String]()
            var arrayOfCharacter: [Character] = [Character]()
            
            repeat {
                print("\n Player \(arrayOfPlayer.count+1) -> Choose the Name of your \(arrayOfCharacter.count+1) Characters ")
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
        } while numberOfPlayer > arrayOfPlayer.count
        
        return arrayOfPlayer
    }
    
    ////Whose turn
    func selectCharacter(isFirstTime: Bool) {
        //        if isPlayerOneTurn {
        //            playerTurn = playerOne
        //        } else {
        //            playerTurn = playerTwo
        //        }
        if isFirstTime {
            let players = buildTeam(numberOfPlayer: 2)
            playerOne = players[0]
            playerTwo = players[1]
        }
        
        
        playerTurn = (isPlayerOneTurn) ? playerOne : playerTwo
        playerNotTurn = (isPlayerOneTurn) ? playerTwo : playerOne
        
        guard let playerTurn = playerTurn else { return }
        guard let playerNotTurn = playerNotTurn else { return }
        
        if isPlayerOneTurn {
            print("\n Player 1 : Choose a character")
        } else {
            print("\n Player 2 : Choose a character")
        }
        
        playerTurn.printInLiveCharacter()
        print("Select your Warrior 🥊 ")
        
        //call func select atack
        selectAttacker()
    
        guard let playerTurnSelectedCharacter = playerTurnSelectedCharacter else { return }
        
        if playerTurnSelectedCharacter.type != "🧑‍⚕️ Medic" {
            print("select your target 🎯")
            playerNotTurn.printInLiveCharacter()
            selectTarget()
            playerTurnSelectedCharacter.attack(target: playerNotTurnSelectedCharacter!, player: playerNotTurn)
        } else {
            //selectAttacker()
            playerTurn.printInLiveCharacter()
            //playerTurnSelectedCharacter.heal(target: )
            var index : Int = Int()
    
            let indexMax: Int =  playerTurn.characterInLife.count - 1
            let indexMin: Int =  playerTurn.characterInLife.count - ( playerTurn.characterInLife.count - 1) - 1
            
            print("wich character you want to heal")
            playerTurn.printInLiveCharacter()
            
            repeat {
            //get choice index.Tools.shared
            index = Tools.shared.getInputInt() - 1
                if index < indexMin || index > indexMax {
                    print("Number should be \(indexMin + 1) and \(indexMax + 1) ")
                }
            
            } while index < indexMin || index > indexMax
                
            playerTurnSelectedCharacter.heal(target: playerTurn.characterInLife[index])
        }
        isPlayerOneTurn.toggle()
        if !isPlayerOneTurn {
            Tools.shared.increaseTurn()
            
        }
        
        if !(playerTurn.numberOfCharacterDies == 3) && !(playerNotTurn.numberOfCharacterDies == 3) {
            selectCharacter(isFirstTime: false)
        } else {
            print("End Of Game")
            printStats()
        }
        
    }
    
    //choose your warrior
    func selectAttacker() {
        //select your teamate
        var index : Int = Int()
        
        //check optionnal
        guard let playerTurnVerify = playerTurn else { return }
        // /!\ index array 123 != 012
        let indexMax: Int = playerTurnVerify.characterInLife.count - 1
        let indexMin: Int = playerTurnVerify.characterInLife.count - (playerTurnVerify.characterInLife.count - 1) - 1
        
        repeat {
        
        //get choice index.Tools.shared
        index = Tools.shared.getInputInt() - 1
            if index < indexMin || index > indexMax {
                print("Number should be \(indexMin + 1) and \(indexMax + 1) ")
            }
        
        } while index < indexMin || index > indexMax
            
        playerTurnSelectedCharacter = playerTurnVerify.characterInLife[index]
        print(playerTurnSelectedCharacter!.name)
    }
    
    //chosse your target
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
    
    //SCORE
    func printStats() {
        playerTurn?.printInLiveCharacter()
        playerTurn?.printDeadCharacter()
        playerNotTurn?.printInLiveCharacter()
        playerNotTurn?.printDeadCharacter()
        Tools.shared.RoundCount()
    }
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





