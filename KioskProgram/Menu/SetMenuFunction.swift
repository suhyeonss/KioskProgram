//
//  SetMenuFunction.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class SetMenuFunction: Menu {
    
    var setMacmoringArray: [SetMenu] = SetMenu.setMenuList[0]
    var setSideArray: [SetMenu] = SetMenu.setMenuList[1]
    var setMaccafeArray: [SetMenu] = SetMenu.setMenuList[2]
    var setDrinkArray: [SetMenu] = SetMenu.setMenuList[3]
    
    override func addMacMoring(name:String, price:Int){
        let macMoring = SetMenu(name: name, price: price)
        setMacmoringArray.append(macMoring)
    }

    override func addSide(name:String, price:Int){
        let side = SetMenu(name: name, price: price)
        setSideArray.append(side)
    }

    override func addMacCafe(name:String, price:Int){
        let macCafe = SetMenu(name: name, price: price)
        setMaccafeArray.append(macCafe)
    }

    override func addDrink(name:String, price:Int){
        let drink = SetMenu(name: name, price: price)
        setDrinkArray.append(drink)
    }
    
}
