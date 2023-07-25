////
////  Mobile.swift
////  KioskProgram
////
////  Created by (^ㅗ^)7 iMac on 2023/07/24.
////
//
//import Foundation
//
//// 모바일 상품권
//class Mobile: Payment {
//
//    // 결제방식 선택여부
//    override func choosePayment(input: String) {
//        switch input {
//        case "1":
//            print("모바일 상품권 결제")
//        case "2":
//            print("모바일 상품권 결제 취소")
//        default:
//            print("잘못된 번호 선택하셨습니다.")
//            break
//        }
//    }
//    
//    override func checkListUserPayment() {
//        print("[모바일 상품권 결제 페이지입니다.]")
//        let dic = ["1":"모바일 상품권 결제완료", "2":"모바일 상품권 결제 취소"]
//        dic.sorted { $0 < $1 }.forEach { print("\($0.key). \($0.value)")}
//    }
//}
