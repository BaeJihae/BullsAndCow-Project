//
//  GamePlay.swift
//  BullsAndCowLv.4
//
//  Created by 배지해 on 3/14/24.
//

class GamePlay {
    
    func start() {
        print("[ 숫자 야구 게임이 시작되었습니다. ]")
        print("===========================")
        print()
        
        let number = Number()
        let user = User()
        
        number.getRandomNum()
        
        while true {
            print("------------------------------------------")
            print("0부터 9까지를 자리수로 가지는 3자리 정수를 입력해주세요.")
            print("------------------------------------------")
            
            user.getUserInput()
            user.count += 1
            
            guard let userNum = user.userNum else { return }
            guard let num = number.num else { return }
            
            if userNum == num {
                // 정답을 맞힌 경우
                print()
                print("정답입니다!")
                print("축하합니다. \(user.count)번 만에 정답을 맞추었습니다! ")
                print()
                break
            }else{
                // 정답을 틀린 경우
                // 비교하는 함수
                print()
                print("틀렸습니다!")
                print(compareNum(userNum, num))
                print()
            }
        }
    }
    
    func compareNum(_ user: Int, _ com: Int) -> String {
        
        // ball과 strike를 가지는 배열
        var ballAndStrike = [0, 0]
        // 파울을 계산하는 변수
        var count = 0
        
        let arrayUser: [Int] = String(user).map{ Int(String($0))! }
        let arrayCom: [Int] = String(com).map{ Int(String($0))! }
        
        for (i, userNum) in arrayUser.enumerated() {
            if arrayCom.contains(userNum) {
                if arrayCom.firstIndex(of: userNum)! == i {
                    ballAndStrike[1] += 1
                }else {
                    ballAndStrike[0] += 1
                }
            }else {
                count += 1
            }
        }
        
        if count == 3 {
            return "파울"
        }else if ballAndStrike[1] == 0{
            return "\(ballAndStrike[0])볼"
        }else if ballAndStrike[0] == 0{
            return "\(ballAndStrike[1])스트라이크"
        }else {
            return "\(ballAndStrike[1])스트라이크 \(ballAndStrike[0])볼"
        }
    }
}
