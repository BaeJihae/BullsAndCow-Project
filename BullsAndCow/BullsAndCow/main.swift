//
//  main.swift
//  BullsAndCow
//
//  Created by 배지해 on 3/14/24.
//



// MARK: - 유저에게 입력값을 받는 getUserInput() 함수


// 유저에게 입력값을 받는 함수
func getUserInput() -> Int {
    let input = readLine()
    
    // 문자열이 입력되지 않았을 경우 에러처리
    guard let input = input else { return getUserInput() }
    
    // 문자열이 3자리가 아닐 경우 에러처리
    if input.count != 3 {
        print("1부터 9까지를 자릿수로 가지는 3자리 숫자를 입력해주세요.")
        return getUserInput()
    }
    
    // 문자열에 0이 포함되어 있는 경우 에러처리
    if input.contains("0") {
        print("1부터 9까지의 숫자를 입력해주세요.")
        return getUserInput()
    }
    
    // 문자열이 숫자가 아닐 경우 에러 처리
    guard let input = Int(input) else {
        print("숫자를 입력해주세요.")
        return getUserInput()
    }
    
    return input
}

// MARK: - 두 개의 숫자를 비교하여 문자열을 출력하는 함수
func compareNum(_ user: Int, _ com: Int) -> String {
    
    // ball과 strike를 가지는 배열
    var ballAndStrike = [0, 0]
    // 파울을 계산하는 변수
    var count = 0
    
    var arrayUser: [Int] = String(user).map{ Int(String($0))! }
    var arrayCom: [Int] = String(com).map{ Int(String($0))! }
    
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
        print("파울")
    }else {
        print("\(ballAndStrike[1])스트라이크 \(ballAndStrike[0])볼")
    }
}


// MARK: - 게임 시작 startGame() 함수

// 게임 시작 함수
func startGame() {
    
    print("게임이 시작되었습니다.")
    print("===========================")
    
    let number = Number()
    number.getRandomNum()
    
    let user = User()
    
    print("랜덤한 세자리 정수가 설정되었습니다.")
    
    while true {
        print("1부터 9까지를 자리수로 가지는 3자리 정수를 입력해주세요.")
        user.userNum = getUserInput()
        user.count += 1
        
        if user.userNum == number.num {
            print("정답입니다!")
            print("축하합니다. \(user.count)만에 정답을 맞추었습니다! ")
            break
        }else{
            // 비교하는 함수
        }
    }
}


