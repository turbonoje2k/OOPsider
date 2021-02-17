//
//  Tools.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

class Tools {
    
    static let shared = Tools() //singleton (Design Pattern)
    
    //func get string from terminal
    func getInputString() -> String {
        print("enter The name of your OOPsider")
        let str = readLine()
        //readLine create a var str, with string
        guard let name = str else {
        //check if is String with guard let
            return "error: enter character name"
        }
        print("Hello, \(name)!")
        return name
    
    }
    
    //func get Int in terminal
    func getInputInt() -> Int {
        print("enter number ")
        let str =  readLine()
        
        guard let strData = str, let strDataInt = Int(strData) else {
            
            return -1
        }
       return strDataInt
    
    }
}
