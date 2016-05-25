//: Playground - noun: a place where people can play
// Swift 기본 테스트

import UIKit

var str = "Hello, playground"
print("Hello, \(str)")


let i1 = 1 + 2
let i2 = 1+2
//let i3 = 1+ 2 //에러
//let i4 = 1 +2 //에러


1...10
1..<10



var i = 1
var f : Float = 1.1
i = 3

var i11 = 1
//i = 3.14  // 타입


let constant = 123
//constant = 456  // 상수



var intVal : Int
intVal = 10

var i5 : Int
//print(i5) // 초기값 필요
i5 = 10


var boolVal : Bool = true


var intVal2 = -123
var uintVal : UInt = 123


sizeof(Int)
Int.max
Int.min


var intVal3 = Int(3.14)
var intVal4 = Int(5e3)
var intVal5 = Int(true)


let int8Val : Int8 = 100
//let int16Val : Int16 = int8Val // 타입 에러
let int16Val : Int16 = Int16(int8Val)


var doubleVal = 3.14
var floatVal : Float = 36.5
//doubleVal + floatVal // 타입 에러
doubleVal + Double(floatVal)


let str2 = "Hello Swift"
str2.characters.count


let str3 = "I \u{2665} Swift"
str3.characters.count


var str4 = "Hello"
str4.appendContentsOf(" Swift")

let exclaim : Character = "!"
str4.append(exclaim)


let str5 = "Hello Swift"
if str5 == "Hello Swift" {
    print("같은 문자열")
}


str5.hasPrefix("Hellow")
str5.hasSuffix("ft")


let str6 = "Hello Swift"
let uppercaseStr = str6.uppercaseString
let lowercaseStr = str6.lowercaseString









