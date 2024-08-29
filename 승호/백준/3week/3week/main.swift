//
//  main.swift
//  3week
//
//  Created by 최승호 on 8/16/24.
//

import Foundation
//
//var n = Int(readLine()!)!
//var stack: [Int] = []
//
//for i in 0..<n {
//    let command = readLine()!.split(separator: " ")
//    
//    switch command[0] {
//    case "push":
//        stack.append(Int(command[1])!)
//    case "pop":
//        print(stack.popLast() ?? "-1")
//    case "size":
//        print(stack.count)
//    case "empty":
//        print(stack.isEmpty ? "1" : "0")
//    case "top":
//        print(stack.last ?? "-1")
//    default :
//        break
//    }
//}

//var n = Int(readLine()!)!
//var queue: [Int] = []
//
//for i in 0..<n {
//    let command = readLine()!.split(separator: " ")
//
//    switch command[0] {
//    case "push":
//        queue.append(Int(command[1])!)
//    case "pop":
//        if queue.isEmpty {
//            print("-1")
//        } else {
//            print(queue.remove(at: 0))
//        }
//    case "size":
//        print(queue.count)
//    case "empty":
//        print(queue.isEmpty ? "1" : "0")
//    case "front":
//        print(queue.first ?? "-1")
//    case "back":
//        print(queue.last ?? "-1")
//    default :
//        break
//    }
//}

while true {
    let str = readLine()!
    var stack: [Character] = []
    
    if str == "." {
        break
    }
        
    for s in str {
        switch s {
        case "(","[" :
            stack.append(s)
        case ")","]" :
            if s == ")", !stack.isEmpty {
                if stack.last! == "(" {
                    let _ = stack.popLast()
                }
            } else if s == "]", !stack.isEmpty {
                if stack.last! == "[" {
                    let _ = stack.popLast()
                }
            }
        default :
            continue
        }
    }
    
    if stack.isEmpty {
        print("yes")
    } else {
        print("no")
    }
}
