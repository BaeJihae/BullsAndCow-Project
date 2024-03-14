//
//  Number.swift
//  BullsAndCow
//
//  Created by 배지해 on 3/14/24.
//
class Number {
    
    var num: Int?
    
    func getRandomNum() -> Int {
        return (1...3).map{ $0*$0*Int.random(in: 1...9) }.reduce(0, +)
    }
    
}
