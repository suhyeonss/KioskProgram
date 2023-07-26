//
//  DrinkMenu.swift
//  KioskProgram
//
//  Created by JeonSangHyeok on 2023/07/25.
//

import Foundation

class DrinkMenu: Menu {
    let name: String
    let price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

extension DrinkMenu {
    static let drinkMenuList: [DrinkMenu] = [
        DrinkMenu(name: "코카-콜라", price: 1700),
        DrinkMenu(name: "코카-콜라 제로", price: 1700),
        DrinkMenu(name: "스프라이트", price: 1700),
        DrinkMenu(name: "환타", price: 1700),
        DrinkMenu(name: "생수", price: 1300),
        DrinkMenu(name: "우유", price: 1600),
        DrinkMenu(name: "쉐이크", price: 2800),
    ]
}
