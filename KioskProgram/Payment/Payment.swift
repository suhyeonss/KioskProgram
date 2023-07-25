//
//  Payment.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/24.
//

import Foundation

// 전체 결제 클래스(부모 클래스)
class Payment {
    var paymentDic = ["1":"신용카드", "2":"현금", "3":"모바일", "0":"뒤로가기"]
    
    // 메뉴얼 표시(공통)
    func showList() {
        print("[아래 메뉴얼을 보시고 결제 방식을 골라 입력해주세요.]")
        paymentDic.sorted { $0 < $1 }.forEach { print("\($0.key). \($0.value)")}
    }
    
    // 결제선택(공통)
    func selectedPayment(input: String) -> Int {
        switch input {
        case "1":
            print("<신용카드를 선택하셨습니다.>")
            return 1
        case "2":
            print("<현금을 선택하셨습니다.>")
            return 2
        case "3":
            print("<모바일 상품권 선택하셨습니다.>")
            return 3
        case "0":
            print("<뒤로가기>")
            return 0
        default:
            print("<잘못된 번호를 선택하셨습니다.>")
            return -1
        }
        
    }
    
    // 결제방식 보여주는 함수
    func checkListUserPayment() {
        
    }
    
    // 결제방식 여부 선택
    func choosePayment(input: String) {
        
    }
    
    // 사용자 결제 방식 입력값에 따른 페이지 이동
    func navigatorFunction(input: Int) {

    }
    
    // 입력값에 따른 결제 여부
    func checkingUserPayment(input: Int) {

    }
    
}
