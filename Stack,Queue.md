# Stack : LIFO
<img width="308" alt="image" src="https://github.com/user-attachments/assets/a3c6fa4f-0269-48d0-b192-eaed6e753aaa">


# Queue : FIFO

<img width="540" alt="image" src="https://github.com/user-attachments/assets/14a7f839-825e-4ed6-977b-31d04921d237">

```swift
struct Stack<T> {
    private var elements: [T] = [] // 프링글스 통 

    // 스택에 요소를 추가하는 메서드 (Push)
    mutating func push(_ element: T) {
        elements.append(element)
    } // append 

    // 스택에서 요소를 제거하고 반환하는 메서드 (Pop)
    mutating func pop() -> T? {
        return elements.popLast()
    } // 1 2 3 4   

    // 스택의 맨 위 요소를 반환하는 메서드 (Peek)
    func peek() -> T? {
        return elements.last
    } 
    // 
    
    // stack.isEmpty 

    // 스택의 요소 개수를 반환하는 메서드
    func count() -> Int {
        return elements.count
    }
}

// 사용 예시
var stack = Stack<Int>()
stack.push(10)
stack.push(20)
stack.push(30)
print(stack.pop() ?? "Empty stack")  // 출력: 30
print(stack.peek() ?? "Empty stack") // 출력: 20 
print(stack.isEmpty())  // 출력: false
```

```swift
struct Queue<T> {
    private var elements: [T] = []

    // 큐에 요소를 추가하는 메서드 (Enqueue)
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }

    // 큐에서 요소를 제거하고 반환하는 메서드 (Dequeue)
    mutating func dequeue() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }

    // 큐의 첫 번째 요소를 반환하는 메서드 (Peek)
    func peek() -> T? {
        return elements.first
    }

    // 큐가 비어있는지 확인하는 메서드
    func isEmpty() -> Bool {
        return elements.isEmpty
    }

    // 큐의 요소 개수를 반환하는 메서드
    func count() -> Int {
        return elements.count
    }
}

// 사용 예시
var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(20)
queue.enqueue(30)
print(queue.dequeue() ?? "Empty queue")  // 출력: 10
print(queue.peek() ?? "Empty queue")     // 출력: 20
print(queue.isEmpty())  // 출력: false
```

## 32 - { 6 - (2 + 4) * 7} ⇒  ?

feel ? 

{  → { ( → ) → {  → } ⇒ .empty 식 가능 

## Stack 과 Queue 의 가장 큰 차이는 마지막을 가르키냐 첫번째를 가르키냐

{ ( [ : push

} ) ] : 조건부로 pop  

## 5 + { 6 - (12 + 4} * 7 )

{ → { ( → { ( } → { ( } )  empty 비어있지 않다 = 식이 불가능하다. 

![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/0659c960-fc06-4467-bc33-56e5f7b6dbf8/c35f215c-3bc8-4844-bd48-2739ef28f2ae/image.png)

## ( ( ) ) ( ) ( )

## ) ) ( ( )

## ( ) ( ) ) ( ( )

## ( { } )

str = “dkd(dj){}dj[]”

for i in str { 

switch i 

case {, [, ( : 

push 

case ]:

if stack.last = “[”

pop 

}

## ( { ) }

## Stack 연습문제

- https://www.acmicpc.net/problem/10828
- 풀이
    
    ```swift
    let n = Int(readLine()!)!  // 명령의 수
    var stack = Stack<Int>()
    
    for _ in 0..<n {
        let command = readLine()!.split(separator: "1")
        switch command[0] {
        case "push":
            let value = Int(command[1])!
            stack.push(value)
            
        case "pop":
            if let poppedValue = stack.pop() {
                print(poppedValue)
            } else {
                print(-1)
            }
            
        case "size":
            print(stack.size())
            
        case "empty":
            print(stack.isEmpty() ? 1 : 0)
            
        case "top":
            if let topValue = stack.top() {
                print(topValue)
            } else {
                print(-1)
            }
            
        default:
            break
        }
    }
    ```
    

## Queue 연습문제

- https://www.acmicpc.net/problem/10845

## 이건 어떻게 풀어야 할까요
