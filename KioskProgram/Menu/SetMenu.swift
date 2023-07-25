//
//  SetMenu.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class SetMenu: Menu {
    let name:String
    let price:Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}
