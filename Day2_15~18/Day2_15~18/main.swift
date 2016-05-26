//
//  main.swift
//  Day2_15~18
//
//  Created by 이상학 on 2016. 5. 26..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation



// 타입체크와 변화 p165
class Animal {
    var name : String
    init(_ name : String){
        self.name = name
    }
}
class Dog: Animal {

}
class Cat: Animal {
    
}
let raz = Cat("라즈")
print (raz is Cat)
print (raz is Dog)
print (raz is Animal)

let animal = raz as Animal
let dog1 = raz as? Dog
//let dog2 = raz as! Dog
print(dog1)




// Any p166
var anyVar : Any = 3
anyVar = "3" // Any 형이라 에러 안남



// 타입 알리아스 p167
typealias Century = Int
var thisEra : Century // 타입을 Century로
thisEra = 21

// 타임 알리아스를 클로저와 함께
typealias ResultHandler = (Int) -> Void
func add(i : Int, _ j : Int, _ resultHandler : ResultHandler){
    let sum = i+j
    resultHandler(sum)
}
add(1,2){
    print($0)
}



// 제네릭을 사용하는 함수와 타입 p170
func printValue<T>(v: T){
    print("Value \(v)")
}
printValue("a")
printValue(1)
printValue(1.2)




// 접근 조절 p171
public class PublicClass{
    public func publicMethod(){
        print("publicMethod")
    }
    internal func internalMethod(){
        print("internalMethod")
    }
    private func privateMethod(){
        print("privateMethod")
    }
}
var obj = PublicClass()
obj.publicMethod()
obj.internalMethod()
obj.privateMethod() // 만약 다른 파일로 간다면 에러





// 싱글턴 패턴
class MyClass{
    
}
let obj1 = MyClass()
let obj2 = MyClass()
print(obj1 === obj2)

class MyClass2{
    static let shatedInstance = MyClass2()
}
let obj3 = MyClass2.shatedInstance
let obj4 = MyClass2.shatedInstance
print(obj3 === obj4)







