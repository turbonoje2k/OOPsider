//
//  main.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

let tool = Tools()
//tool.getInputString()
//tool.getInputInt()

//var monPerso = Gunner(name: "hero")
//var monPerso2 = Hitman(name: "rob")
//var monPerso3 = Medic(name: "doc")

//let characterArray = [monPerso, monPerso2, monPerso3]
//var Player1 = Player(character: characterArray)
//
//Player1.printInLiveCharacter()


let game = Game()
game.intro()

game.selectCharacter()
/**print(game.chooseTeam(nameTeamMate: <#T##String#>).weapon.damage)**/
//print(game.buildTeam(numberofPlayer: 3))

