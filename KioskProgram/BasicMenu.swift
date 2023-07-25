//
//  BasicMenu.swift
//  KioskProgram
//
//  Created by 하호형 on 2023/07/24.
//

import Foundation

class BasicMenu{
    let name:String
    let price:Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

class Menu{
    var macmoringArray: [BasicMenu] = []
    var sideArray: [BasicMenu] = []
    var maccafeArray: [BasicMenu] = []
    var drinkArray: [BasicMenu] = []
    
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
let menu = Menu()




