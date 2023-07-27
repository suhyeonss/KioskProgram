//
//  OrderNumber.swift
//  KioskProgram
//
//  Created by Junyoung_Hong on 2023/07/24.
//

import Foundation

class OrderNumber {
    var forhere = 0
    var togo = 0

    func printOrderNumber (type: String, items: [Array<Any>]) {
        let randNum = Int.random(in: 1...50)
        if type == "매장"  {
            print("[주문 번호: A - \(randNum)]")
            for i in items {
                print("[제품명: \(i[0]) \(i[1]) \(i[2])]")
            }
        }
        else {
            print("[주문 번호: B - \(randNum)]")
            for i in items {
                print("[제품명: \(i[0]) \(i[1]) \(i[2])]")
            }
        }
    }
}
