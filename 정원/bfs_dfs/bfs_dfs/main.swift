//
//  main.swift
//  bfs_dfs
//
//  Created by 김정원 on 8/22/24.
//

import Foundation

//let num = readLine()!.split(separator: " ").map{Int($0)!}
//let dx = [1,0,-1,0]
//let dy = [0,1,0,-1]
//let (n,m) = (num[0],num[1])
//var arr: [[Int]] = []
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
//var q: [(Int, Int)] = []
//// 입력
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    arr.append(input)
//}
//
//// 검사
//var result = 0
//var cnt = 0
//for i in 0..<n {
//    for j in 0..<m {
//        if visited[i][j] || arr[i][j] < 1 { // 이 조건이면 pass
//            continue
//        }
//        
//        var area = 0
//        q.append((i,j))
//        visited[i][j] = true
//        cnt += 1
//
//        while (!q.isEmpty) {
//            let front = q.removeFirst()
//            area += 1
//            visited[front.0][front.1] = true // 방문했다고 바꿔줌
//            for z in 0...3 {
//                let nx = front.0 + dx[z]
//                let ny = front.1 + dy[z]
//                
//                if nx < 0 || nx >= n || ny < 0 || ny >= m {
//                    continue  // 범위를 벗어난것은 필요없음
//                }
//                if visited[nx][ny] || arr[nx][ny] < 1 {
//                    continue
//                }
//                q.append((nx,ny))
//                visited[nx][ny] = true
//            }
//        }
//        result = max(result, area)
//    }
//    
//}
//print(cnt)
//print(result)
//
//
//
