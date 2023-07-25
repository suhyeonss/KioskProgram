//
//  DrinkMenu.swift
//  KioskProgram
//
//  Created by JeonSangHyeok on 2023/07/25.
//

import Foundation

class DrinkMenu: Menu {
    let name: String
    let mediumPrice: Int
    let largePrice: Int?
    
    init(name: String, mediumPrice: Int, largePrice: Int?) {
        self.name = name
        self.mediumPrice = mediumPrice
        self.largePrice = largePrice
    }
}

extension DrinkMenu {
    static let drinkMenuList: [DrinkMenu] = [
        DrinkMenu(name: "코카-콜라", mediumPrice: 1700, largePrice: 2200),
        DrinkMenu(name: "코카-콜라 제로", mediumPrice: 1700, largePrice: 2200),
        DrinkMenu(name: "스프라이트", mediumPrice: 1700, largePrice: 2200),
        DrinkMenu(name: "환타", mediumPrice: 1700, largePrice: 2200),
        DrinkMenu(name: "생수", mediumPrice: 1300, largePrice: nil),
        DrinkMenu(name: "우유", mediumPrice: 1600, largePrice: nil),
        DrinkMenu(name: "쉐이크", mediumPrice: 2800, largePrice: nil),
    ]
}
