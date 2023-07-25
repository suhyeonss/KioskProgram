//
//  MenuFunction.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class MenuFunction: Menu {
    
    func addMacMoring(name:String, price:Int){
        let macMoring = BasicMenu(name: name, price: price)
        macmoringArray.append(macMoring)
    }

    func addSide(name:String, price:Int){
        let side = BasicMenu(name: name, price: price)
        sideArray.append(side)
    }

    func addMacCafe(name:String, price:Int){
        let macCafe = BasicMenu(name: name, price: price)
        maccafeArray.append(macCafe)
    }

    func addDrink(name:String, price:Int){
        let drink = BasicMenu(name: name, price: price)
        drinkArray.append(drink)
    }
    
}


