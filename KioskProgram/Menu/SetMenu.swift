//
//  SetMenu.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class SetMenu {
    let name:String
    let price:Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

extension SetMenu {
    static let setMenuList: [[SetMenu]] = [
        [
            SetMenu(name: "빅맥　버거", price: 6500),
            SetMenu(name: "맥스파이시　상하이　버거", price: 6500),
            SetMenu(name: "치즈　클래식　버거", price: 7500),
            SetMenu(name: "베이컨　토마토　디럭스", price: 7400),
            SetMenu(name: "맥크리스피　디럭스　버거", price: 7900),
            SetMenu(name: "맥크리스피　클래식　버거", price: 7400),
            SetMenu(name: "맥치킨　모짜렐라　버거", price: 7200),
            SetMenu(name: "맥치킨　버거", price: 5000),
            SetMenu(name: "더블　불로기　버거", price: 6000),
            SetMenu(name: "에그　불고기　버거", price: 5200),
            SetMenu(name: "불고기　버거", price: 4500),
            SetMenu(name: "슈슈　버거", price: 6000),
            SetMenu(name: "슈비　버거", price: 7800),
            SetMenu(name: "쿼터파운더　치즈　버거", price: 7200),
            SetMenu(name: "더블　쿼터파운더　치즈　버거", price: 8800),
            SetMenu(name: "트리플　치즈　버거", price: 7200),
            SetMenu(name: "더블　치즈　버거", price: 6000),
            SetMenu(name: "치즈　버거", price: 4700),
        ],
        
        [
            // 메뉴 저장 맥모닝
            SetMenu(name: "에그맥머핀세트", price: 4400),
            SetMenu(name: "소시지에그맥머핀세트", price: 4800),
            SetMenu(name: "베이컨에그맥머핀세트", price: 4600),
            SetMenu(name: "치킨치즈머핀세트", price: 4900),
            SetMenu(name: "베이컨토마토에그머핀세트", price: 5000),
            SetMenu(name: "핫케이크", price: 4300),
            SetMenu(name: "디럭스브렉퍼스트", price: 6200),
        ]
    ]
}
