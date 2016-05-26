//
//  main.swift
//  Day3_Extension
//
//  Created by 이상학 on 2016. 5. 26..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation

let str : String!
let array = Array<Int>()

class MyClass {
    
}

extension MyClass{
    func sayHello() {
        print("hello")
    }
}

let obj = MyClass()
obj.sayHello()

protocol MyProtocol {
    
}

extension MyProtocol{
    func sayGoodbye() {
        print("bye")
    }
}

struct MyStruct : MyProtocol {
    func sayGoodbye(){
        print("bye bye")
    }
}

extension MyClass : MyProtocol{
    
}




/// extension p152
class Dog {
    func eat(){
        print("사료 먹기")
    }
}
extension Dog{
    func bike(){
        print("멍멍멍")
    }
}
var myDog = Dog()
myDog.eat()
myDog.bike()

// 프로토콜 채택
protocol Running{
    func run()
}
extension Dog : Running {
    func run(){
        print("뛰기")
    }
}




// 프로토콜 extension
protocol Movable{}
extension Movable{
    func move(){
        print("Go! go! go")
    }
}
struct Human : Movable {
    
}
var man = Human()
man.move()

// extension 이용 다중 상속
protocol Flyable{
    
}
extension Flyable{
    func fly(){
        print("fly me to the moon")
    }
}
class Superman : Movable, Flyable {
    func move() {
        print("Move Fast")
    }
}
var superman = Superman()
superman.move()
superman.fly()


















