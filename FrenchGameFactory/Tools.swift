//
//  Tools.swift
//  FrenchGameFactory
//
//  Created by noje on 21/12/2020.
//

import Foundation

class Tools {
    
    func getInputString() -> String {
        print("tape un truc")
        let str = readLine()
        guard let name = str else {
            
            return "yo1"
        }
        print("Hello, \(name)!")
        return name
    }
    
    func getInputInt() -> Int {
        print("tape un nbr ")
        let str =  readLine()
        
        guard let strData = str/*, let strDataInt = Int(strData)*/ else {
            
            return -1
        }
        let myInt = Int(strData)
        //print(myInt)
        return myInt!
    
    }
    
}
