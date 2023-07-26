//
//  BasketFunctions.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class BasketFunctions: Basket {
    
    override func showCurrentBasket() {
        totalPrice()
        if basketList.isEmpty {
            print("장바구니가 비어있습니다.")
        } else {
            print("-장바구니-")
            for i in (0..<basketList.count) {
                print("\(i+1). \(basketList[i][0]), 수량: \(basketList[i][2]), ₩ \(basketList[i][1])")
            }
        }
        print("금액: \(total)")
        print(String(repeating: "=", count: 30))
    }

    //장바구니에 상품을 추가하는 메소드
    override func appendProduct(basket : Array<Any>) {
        print("장바구니에 추가하시겠습니까? \n1. Yes \n2. No")
        let inputNumber = Int(readLine() ?? "2")
        switch inputNumber {
        case 1:
            basketList.append(basket)
            print("장바구니에 추가되었습니다.")
            print(String(repeating: "=", count: 30))
            print("-장바구니-")
            for i in (0..<basketList.count) {
                print("\(i+1). \(basketList[i][0]), 수량: \(basketList[i][2]), ₩ \(basketList[i][1])")
            }
//            print(String(repeating: "=", count: 30))
//            print("주문을 추가하시겠습니까? \n1.Yes\n2. No(결제하기)")
//            let appendNum = Int(readLine() ?? "1")
//            switch appendNum {
//            case 2:
//                print("결제하기")
//            default:
//                return
//            }
        default:
            print("취소되었습니다.")
        }
    }
    
    //장바구니의 상품을 삭제하는 메소드
    override func removeProduct() {
        print(String(repeating: "=", count: 30))
        print("-장바구니-")
        for i in (0..<basketList.count) {
            print("\(i+1). \(basketList[i][0]), 수량: \(basketList[i][2]), ₩ \(basketList[i][1])")
        }
        print(String(repeating: "=", count: 30))
        print("삭제할 상품의 번호를 입력하세요. \n0번은 취소입니다.")
        let deleteNumber = Int(readLine() ?? "0")
        if deleteNumber!-1 >= basketList.count {
            print(String(repeating: "=", count: 30))
            print("삭제할 상품의 번호가 존재하지 않습니다.")
        } else if deleteNumber == 0 {
            print(String(repeating: "=", count: 30))
            print("취소되었습니다.")
        } else {
            basketList.remove(at: deleteNumber!-1)
            print(String(repeating: "=", count: 30))
            print("\(deleteNumber!)번 상품이 삭제되었습니다.")
        }
    }
    
    //장바구니의 모든 상품을 삭제하는 메소드
    override func removeEverything() {
        print(String(repeating: "=", count: 30))
        print("장바구니의 상품을 전체삭제 하시겠습니까?")
        print("1. Yes \n2. No")
        let chooseOpetion = Int(readLine() ?? "2")
        if chooseOpetion == 1 {
            basketList.removeAll()
            print(String(repeating: "=", count: 30))
            print("장바구니의 상품이 전체 삭제되었습니다.")
        } else {
            print(String(repeating: "=", count: 30))
            print("취소되었습니다.")
        }
    }
    
    //장바구니에서 옵션 선택하도록 하는 메소드
    override func baksetOption() {
        print(String(repeating: "=", count: 30))
        showCurrentBasket()
        
        print("1. 상품 삭제")
        print("2. 상품 전체 삭제")
        print("3. 결제하기")
        print("0. 상품 추가하기")
        print("\n번호를 입력해 주세요:",terminator: " ")

    }
    override func totalPrice(){
        total = 0
        for i in (0..<basketList.count) {
            var itemPrice = basketList[i][1] as! Int
            var itemCount = basketList[i][2] as! Int
            total += itemPrice * itemCount
        }
        
    }
}
