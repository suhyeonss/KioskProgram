//
//  Basket.swift
//  KioskProgram
//
//  Created by suhyeon on 2023/07/24.
//

import Foundation

class Basket {
    //basketList 생성
    //추후에 Array 내에 메뉴이름 - 가격 연결
    var basketList = Array<String>()
    
    //장바구니에 담긴 상품의 총액
    var total = 0
    
    func showCurrentBasket() {
        if basketList.isEmpty {
            print("장바구니가 비어있습니다.")
        } else {
            print("장바구니 내역:")
            for i in (0..<basketList.count) {
                print("\(i+1). \(basketList[i])")
            }
        }
        print("총액 : \(total)")
        
    }
    
    //장바구니에 상품을 추가하는 메소드
    func appendProduct(product : String) {
        basketList.append(product)
        print("장바구니에 추가되었습니다.")
    }
    
    //장바구니의 상품을 삭제하는 메소드
    func removeProduct() {
        print("장바구니 내역:")
        for i in (0..<basketList.count) {
            print("\(i+1). \(basketList[i])")
        }
        print("삭제할 상품의 번호를 입력하세요. \n0번은 취소입니다.")
        let deleteNumber = Int(readLine() ?? "0")
        if deleteNumber!-1 >= basketList.count {
            print("삭제할 상품의 번호가 존재하지 않습니다.")
        } else if deleteNumber == 0 {
            print("취소되었습니다.")
        } else {
            basketList.remove(at: deleteNumber!-1)
            print("\(deleteNumber!)번 상품이 삭제되었습니다.")
        }
    }
    
    //장바구니의 모든 상품을 삭제하는 메소드
    func removeEverything() {
        print("장바구니의 상품을 전체삭제 하시겠습니까?")
        print("1. Yes \n2. No")
        let chooseOpetion = Int(readLine() ?? "2")
        if chooseOpetion == 1 {
            basketList.removeAll()
            print("장바구니의 상품이 전체 삭제되었습니다.")
        } else {
            print("취소되었습니다.")
        }
    }
    

    
}
