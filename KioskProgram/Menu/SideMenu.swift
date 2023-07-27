//
//  SideMenu.swift
//  KioskProgram
//
//  Created by JeonSangHyeok on 2023/07/25.
//

import Foundation

class SideMenu: Menu {
    let name: String
    let price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

extension SideMenu {
    static let sideMenuList: [SideMenu] = [
        SideMenu(name: "상하이　치킨　스낵랩", price: 2700),
        SideMenu(name: "맥너겟", price: 3500),
        SideMenu(name: "맥스파이시　치킨　텐더", price: 5600),
        SideMenu(name: "코울슬로", price: 1900),
        SideMenu(name: "골든　모짜렐라　치즈스틱", price: 4200),
        ]
}
