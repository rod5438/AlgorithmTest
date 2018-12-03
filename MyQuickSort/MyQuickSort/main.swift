//
//  main.swift
//  MyQuickSort
//
//  Created by Jason Wu on 2018/12/2.
//  Copyright © 2018 Jason Wu. All rights reserved.
//

import Foundation


extension Array where Element==Int {
    mutating func myQuickSort() {
        self.quickSortRecursive(withStart: 0, andEnd: self.count - 1)
    }
    mutating func quickSortRecursive(withStart start:Int, andEnd end:Int) {
        if start > end {
            return
        }
        let mid:Int = self[end]
        var left:Int = start
        var right:Int = end - 1
        while left < right {
            while self[left] < mid, left < right {
                left+=1
            }
            while self[right] >= mid, left < right {
                right-=1
            }
            self.swapAt(left, right)
        }
        if (self[left] >= self[end]) {
            self.swapAt(left, end)
        }
        else {
            left+=1;
        }
        if (left > 0) {
            self.quickSortRecursive(withStart: start, andEnd: left - 1)
        }
        self.quickSortRecursive(withStart: left + 1, andEnd: end)
    }
}


var testArray: [Int] = Array();
let maxNumber = 100000000
for _ in  0...maxNumber {
    testArray.append(Int.random(in: 0...(maxNumber)))
}

let beginSort : Date = Date()
testArray.myQuickSort()
let totalTimeInterval = Date().timeIntervalSince(beginSort)

print(totalTimeInterval)
