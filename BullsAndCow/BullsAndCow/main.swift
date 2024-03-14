//
//  main.swift
//  BullsAndCow
//
//  Created by 배지해 on 3/14/24.
//
// - Lv1
// - [ ]  1에서 9까지의 서로 다른 임의의 수 3개를 정하고 맞추는 게임입니다
// - [ ]  정답은 랜덤으로 만듭니다.(1에서 9까지의 서로 다른 임의의 수 3자리)

// readLine() 함수를 이용하여 유저의 입력값 처리하기
// readLine() 함수에 대해 학습해보고 활용하기


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

// 게임 시작 함수
func startGame() {
    
    print("게임이 시작되었습니다.")
    print("===========================")
    
    let number = Number()
    number.getRandomNum()
    
    print("랜덤한 세자리 정수가 설정되었습니다.")
    
}


