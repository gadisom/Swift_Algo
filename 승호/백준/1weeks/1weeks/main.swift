//
//  main.swift
//  1weeks
//
//  Created by 최승호 on 8/2/24.
//

/// 부녀회장이 될테야 (2775)
/// Bronze 1 (dp알고리즘)
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
