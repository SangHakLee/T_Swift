//
//  MyClass.swift
//  HelloClass
//
//  Created by 이상학 on 2016. 5. 24..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Cocoa

class MyClass: NSObject {
    var intproperty = 0
    
    var floatProperty : Float? // 초기값 없는 옵셔널
    
//    var strProperty : String //에러 초기값 없는데 옵셔널이 아니라
}


class Person {
    // 상수
    let thisYear = 2016
    
    // 저장 프로퍼티
    var birthYear : Int = 0
    
    // 계산 프로퍼티
    var age : Int {
        get {
            // 파라미터 타입과 같은 타입의 값 반화
            return thisYear - birthYear
        }
        set {
            // newValue가 기본 이름
            birthYear = thisYear - newValue
        }
    }
}


class Rectangle {
//    var width = 0
    var width : Int
//    var height = 0
    var height : Int
    
    // get 전용의 계산 프로퍼티
    var isSquare : Bool {
        return width == height
    }
    
    var name : String?
    
    init(width : Int, height : Int){
        self.width = width
        self.height = height
    }
}

class MyClass2 {
    var value : Int = 0
}


class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func incrementBy(amount : Int){
        count += amount
    }
    
    func reset(){
        count = 0
    }
    
    func incrementBy(amount : Int, numberOfTimes : Int){
        count += amount * numberOfTimes
    }
    
    func setCount(count : Int){
        self.count = count
    }
}
