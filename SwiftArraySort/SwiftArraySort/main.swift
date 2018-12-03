//
//  main.swift
//  SwiftArraySort
//
//  Created by Jason Wu on 2018/12/2.
//  Copyright © 2018 Jason Wu. All rights reserved.
//

import Foundation

var testArray: [Int] = Array();
let maxNumber = 100000000
for _ in  0...maxNumber {
    testArray.append(Int.random(in: 0...maxNumber));
}

let beginSort : Date = Date()
testArray.sort();
let totalTimeInterval = Date().timeIntervalSince(beginSort)

print(totalTimeInterval)
