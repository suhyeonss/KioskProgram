//
//  PaymentFunction.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/24.
//

import Foundation

class PaymentFunction {
    
    // 사용자 결제 방식 입력값에 따른 페이지 이동
    func navigatorFunction(input: Int) {
        if answer == 1 {
            print("[신용카드 결제 페이지로 넘어갑니다.]")
            currentAnswer = 1
        } else if answer == 2 {
            print("[현금 결제 페이지로 넘어갑니다.]")
            currentAnswer = 2
        } else if answer == 3 {
            print("[모바일 결제 페이지로 넘어갑니다.]")
            currentAnswer = 3
        } else if answer == 0 {
            print("[메뉴 선택 페이지로 넘어갑니다.]")
            currentAnswer = 0
        } else {
            print("[잘못된 값입니다.]")
            currentAnswer = -1
        }
    }
    
    // 입력값에 따른 결제 여부
    func checkingUserPayment(input: Int) {
        if currentAnswer == 1 {
            // 결제방식 보여주는 함수
            creditCards.checkListUserPayment()
            var answer = readLine()!
            creditCards.choosePayment(input: answer)
            
        } else if currentAnswer == 2 {
            cashs.checkListUserPayment()
            var answer = readLine()!
            cashs.choosePayment(input: answer)
            
        } else if currentAnswer == 3 {
            mobile.checkListUserPayment()
            var answer = readLine()!
            mobile.choosePayment(input: answer)
            
        } else if currentAnswer == 0 {
            print("[메뉴 선택 페이지로 넘어갑니다.]")
            
        } else {
            
        }
    }
}
