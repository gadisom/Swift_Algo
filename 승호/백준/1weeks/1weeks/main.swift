//
//  main.swift
//  1weeks
//
//  Created by 최승호 on 8/5/24.
//

import Foundation

// 부녀회장이 될테야 (dp알고리즘)
//let count = Int(readLine()!)!
//var floor: [Int] = []
//var hosu: [Int] = []
//
//for _ in 1...count {
//    floor.append(Int(readLine()!)!)
//    hosu.append(Int(readLine()!)!)
//}
//
//// k층 n호는 k-1층의 1호부터 n호까지의 합
//for i in 0..<count {
//    var num = 0
//    var temp = Array(repeating: 0, count: hosu[i]+1)
//    var apart = Array(repeating: temp, count: floor[i]+1)
//    
//    for j in 0...hosu[i] {
//        apart[0][j] = num
//        num += 1
//    }
//    
//    for f in 1...floor[i] { // 각 층마다
//        var sum = 0
//        
//        for h in 0...hosu[i] { // 각 호마다
//            sum += apart[f-1][h]
//            apart[f][h] = sum
//        }
//    }
//    
//    print(apart[floor[i]][hosu[i]])
//}

// 직사각형 별찍기 (lv.1)
//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//let (a, b) = (n[0], n[1])
//
//for _ in 0..<b {
//    for _ in 0..<a {
//        print("*",terminator: "")
//    }
//    print("")
//}

