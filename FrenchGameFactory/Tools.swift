//
//  Tools.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

class Tools {
    
    static let shared = Tools()
    
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
