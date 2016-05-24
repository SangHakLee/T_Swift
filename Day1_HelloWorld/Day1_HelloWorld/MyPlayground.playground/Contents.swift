//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print (str)

// 범위 연산자
//print (1...10)

// 값에 대한 엄격함
var intVal = 1
var floatVal = 1.2
//var ret = intVal + floatVal

// 타입 변경 안됨
var var1 = 10
//var1 = 1.1

// 상수 변경 안됨
let constant = 123
//constant = 1

// 생성 후 초기화 필요
var i : Int
//print(i)
i = 10


print (sizeof(Int32))


// 타입 에러
let int8Val : Int8 = 100
//let int16Val : Int16 = int8Val


var double = 3.14 // 실수 기본은 double 타입


let char : Character = "a"


let char2 : Character = "\u{2665}"


var strFromInt = String(true)


let str4 = "1+2 = \(1+2)"


var str5 = "Hello Swift"


let str6 = "Hello Swift"
if str6 == "Hello Swift"{
    print ("같은 문자열")
}

var str7 = "Hello"
str.insertContentsOf("Swift".characters, at: str7.endIndex) //

str5.characters.count
str5.appendContentsOf("!!")
str5 + "~~~~\(1+2)"
let index = str5.startIndex
let index2 = index.advancedBy(3)
str[index2]


