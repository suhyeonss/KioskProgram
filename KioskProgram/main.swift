//
//  Main.swift
//  KioskProgram
//
//  Created by 하호형 on 2023/07/24.
//

/*
 1. 전상혁 -> 포장여부 / 단품 세트 클래스
 2. 하호형 -> 기본메뉴
 3. 이수현 -> 장바구니 클래스
 4. 김준우 -> 결제 클래스
 5. 홍준영 -> 주문번호 생성 클래스
 */

class Main {
    let orderType = OrderType()
    let itemType = ItemType()
    let menu = Menu()
    let menuType = MenuType()
    let menuFun = MenuFunctions()
}



let mc = Main()

mc.menuFun.displayInfo()
