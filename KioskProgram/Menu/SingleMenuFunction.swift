//
//  MenuFunction.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class SingleMenuFunction: Menu {
    
    var singleMacmoringArray: [SingleMenu] = SingleMenu.singleMenuList[0]
    var singleSideArray: [SingleMenu] = SingleMenu.singleMenuList[1]
    var singleMaccafeArray: [SingleMenu] = SingleMenu.singleMenuList[2]
    var singleDrinkArray: [SingleMenu] = SingleMenu.singleMenuList[3]
    
    override func addMacMoring(name:String, price:Int){
        let macMoring = SingleMenu(name: name, price: price)
        singleMacmoringArray.append(macMoring)
    }

    override func addSide(name:String, price:Int){
        let side = SingleMenu(name: name, price: price)
        singleSideArray.append(side)
    }

    override func addMacCafe(name:String, price:Int){
        let macCafe = SingleMenu(name: name, price: price)
        singleMaccafeArray.append(macCafe)
    }

    override func addDrink(name:String, price:Int){
        let drink = SingleMenu(name: name, price: price)
        singleDrinkArray.append(drink)
    }
    
}


