//
//  main.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

//init tool need to play
let tool = Tools()

//init game
let game = Game()
// lunch the game with commande "intro"
game.intro()
//trigger for turn by turn
game.selectCharacter(isFirstTime: true)
