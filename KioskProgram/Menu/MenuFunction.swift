//
//  MenuFunction.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class MenuFunction: Menu {
    
    override func addMacMoring(name:String, price:Int){
        let macMoring = SingleMenu(name: name, price: price)
        macmoringArray.append(macMoring)
    }

    override func addSide(name:String, price:Int){
        let side = SingleMenu(name: name, price: price)
        sideArray.append(side)
    }

    override func addMacCafe(name:String, price:Int){
        let macCafe = SingleMenu(name: name, price: price)
        maccafeArray.append(macCafe)
    }

    override func addDrink(name:String, price:Int){
        let drink = SingleMenu(name: name, price: price)
        drinkArray.append(drink)
    }
    
}


