//
//  Number.swift
//  BullsAndCow
//
//  Created by 배지해 on 3/14/24.
//
class Number {
    
    var num: Int?
    
    func getRandomNum() {
        var num = [Int]()
        
        while num.count < 3 {
            var a = Int.random(in: 1...9)
            if num == [] || !num.contains(a) {
                num.append(a)
            }
        }
        
        self.num = num[0] * 100 + num[1] * 10 + num[0] * 1
    }
}
