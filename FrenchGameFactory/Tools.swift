//
//  Tools.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

class Tools {
    
    //func pour recuperer les input taper dans console
    func getInputString() -> String {
        print("enter a name")
        //on invite à saisir un nom en l'occurrence
        let str = readLine()
        //readLine va lire les sttring encapsulé dans la variable str
        guard let name = str else {
        //grace au guard let on verifie la saisie
            return "error: enter character name"
            //Si saisie n'est pas de type string
        }
        print("Hello, \(name)!")
        return name
        //saisie correct
    }
    
    //func recup Int taper dans console
    func getInputInt() -> Int {
        print("enter number ")
        let str =  readLine()
        
        guard let strData = str/*, let strDataInt = Int(strData)*/ else {
            
            return -1
        }
        let myInt = Int(strData)
        //print(myInt)
        return myInt!
    
    }
    
    //func creer une equipe
        /**
        joueur 1 choisi 1 perso (parmis 4 dispo, et le nome)
        ( 3 * func creer un guss)
     */
    
    func NameYourGuss(name: String) {
        print("please type the name of your Guss")
        
        //if let name = readLine() {
            
        }
    }
    
    //func creer un guss
        /**
        le joueur choisit un perso parmis 4 dispo
        une fois perso choisit on le nomme ( un pseudo unique)
        appel func verifier pseudo
     */
    func createGuss() {
        print("Choose your Guss"
            + "\n1. 🥷 Hitman"
            + "\n2. 💂‍♀️ Gunner"
            + "\n3. 👷‍♂️ Engineer"
            + "\n4. 🧑‍⚕️ Medic")
    }
    
    //
    
    //func verifier nom pseudo
        /**
        les pseudo sont stocké dans un tableau
     */
    
    //func jouer un tour
        /**
        chacun son tour
        les joueur s'affronte
        le joueur doit selectionner un de ses guss
        le guss fait un FUNC jet de dés poru savoir si il a une arme bonus
     
        puis choisit soit enlever HP ennemi
        soit
     */
    
    //func fin de partie
        /**
        apres tour d'un joueur on verifie si PV des 2 team != 0
     */
    
    //func jet de dés
    /**
     determine une chance d'octroyé un des trois type d'arme bonus au joueur selectionner
     */
    
