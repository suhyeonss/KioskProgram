//
//  Basket.swift
//  KioskProgram
//
//  Created by suhyeon on 2023/07/24.
//

import Foundation

// 제품 정보
enum ProductInfo {
    case name(String)
    case price(Int)
    case num(Int)
}

class Basket {
    //basketList 생성
    //추후에 Array 내에 메뉴이름 - 가격 연결
    var basketList = [ProductInfo]()
    
    //장바구니에 담긴 상품의 총액
    var total = 0
    
    func showCurrentBasket() {

    }

    //장바구니에 상품을 추가하는 메소드
    func appendProduct(product : String, price : Int, num : Int) {

    }
    
    //장바구니의 상품을 삭제하는 메소드
    func removeProduct() {
       
    }
    
    //장바구니의 모든 상품을 삭제하는 메소드
    func removeEverything() {

    }
}
