import Foundation

class OrderNumber {
    var forhere = 0
    var togo = 0

    var time: Date = Date()
    
    func printOrderNumber (type: String, items: [Array<Any>]) {
        let randNum = Int.random(in: 1...50)
        if type == "매장"  {
            print(String(repeating: "=", count: 30))
            print("[주문 번호: A - \(randNum)]")
            print("[\(formatter(from: time))]")
            for i in items {
                print("[제품명: \(i[0])  | 가격: \(i[1]) | 수량 : \(i[2])]")
            }
        }
        else {
            print("[주문 번호: B - \(randNum)]")
            for i in items {
                print("[제품명: \(i[0])  | 가격: \(i[1]) | 수량 : \(i[2])]")
            }
        }
        print(String(repeating: "=", count: 30))
    }
    
    // 날짜 변환(2023-07-27 00:00 +0000 -> 2023-07-27 00:00)
    func formatter(from date: Date) -> String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "주문날짜 yyyy-MM-dd | 주문 시간 HH:mm"
        formatter.locale = Locale(identifier: "ko_KR")
        let convert = formatter.string(from: date)
        
        
        return convert
    }
}
