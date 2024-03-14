//
//  RecordManager.swift
//  BullsAndCowLv.4
//
//  Created by 배지해 on 3/14/24.
//

class RecordManager {
    
    // 유저들의 게임 기록을 기록할 배열
    private var recordArray: [Int] = []
    
    // 유저들의 게임 정보를 저장할 함수
    func setRecordArray(_ count: Int) {
        recordArray.append(count)
    }
    
    // 유저들의 게임 정보를 출력하는 함수
    func getRecordArray() {
        if recordArray == [] {
            print("게임 기록이 존재하지 않습니다.")
        }
        recordArray.enumerated().forEach{ (i, count) in
            print("\(i+1)번째 게임 : 시도 횟수 \(count)번")
        }
    }
}
