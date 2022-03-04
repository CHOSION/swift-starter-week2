//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: Set<Int> = Set<Int>()
var lottoNumbers: Set<Int> = Set<Int>()

func chooseNumbers() -> Set<Int> {
    var randomSixNumbers: Set<Int> = Set<Int>()
    while randomSixNumbers.count < 6 {
        let randomNumber: Int = Int.random(in: 1...45)
        randomSixNumbers.insert(randomNumber)
    }
    return randomSixNumbers
}

func chooseAllNumbers() {
    myLottoNumbers = chooseNumbers()
    lottoNumbers = chooseNumbers()
}

func compare(mine: Set<Int>, thisWeek: Set<Int>) -> Set<Int> {
    let intersection: Set<Int> = myLottoNumbers.intersection(lottoNumbers)
    return intersection
}

func separateNumbers(mine: Set<Int>, thisWeek: Set<Int>) {
    for compare in compare(mine: mine, thisWeek: thisWeek) {
        print(compare, terminator: " ")
    }
}

func confirmTheWin(mine: Set<Int>, thisWeek: Set<Int>) {
    switch compare(mine: mine, thisWeek: thisWeek).isEmpty {
    case true:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case false:
        print("축하합니다! 겹치는 번호는", terminator: " ")
        separateNumbers(mine: mine, thisWeek: thisWeek)
        print("입니다!")
    }
}

chooseAllNumbers()
confirmTheWin(mine: myLottoNumbers, thisWeek: lottoNumbers)
