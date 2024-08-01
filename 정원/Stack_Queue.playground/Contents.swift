import UIKit
import Foundation

// LIFO
struct Stack<T> {
    private var storage: [T] = []
    
    mutating func push(_ element: T) {
        storage.append(element)
    }
    
    mutating func pop() -> T? {
        return storage.popLast()
    }
    
    func peek() -> T? {
        return storage.last
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
}

struct Queue<T> {
    private var storage: [T] = []
    
    // 요소를 큐의 끝에 추가
    mutating func enqueue (_ element: T) {
        storage.append(element)
    }
    
    mutating func dequeue() -> T? {
        return isEmpty ? nil : storage.removeFirst()
    }
    
    func peek() -> T? {
        return storage.first
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
}
