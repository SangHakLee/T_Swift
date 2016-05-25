//
//  main.swift
//  Day2_Closure
//
//  Created by 이상학 on 2016. 5. 25..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation

func sayHello() -> String {
    return "Hello"
//    print("Hello")
}

//sayHello()

//let hello = sayHello
//print(hello)
//hello()

//let ret = sayHello()
//let ret2 = sayHello
//let rrr = ret2()


//func justDoIt(arg : () -> String) {
//    arg()
//}
//
////justDoIt(sayHello()) // 결과인 String
//justDoIt(sayHello) // 함수 자체
//
//var array = [1,4,2,5,3]
//
//func sortFunc(a : Int, b : Int) -> Bool{
//    return a < b
//}
//
//let sorted = array.sort(sortFunc)
//print(sorted)
//
//let sorted2 =  array.sort( { (a : Int, b : Int) -> Bool in return a > b} )
//
//
//let s = array.sort()
//print(s)
//
//let s1 = array.sort { (a, b:Int) -> Bool in
//    return a > b
//}
//
//var array2 = ["a", "aa", "aaa"]
//let s2 = array2.sort { (a, b) -> Bool in
//    a.characters.count < b.characters.count
//}
//
//let mapped = array.map({ (a:Int) -> String in
//    return String(a)
//})
//print(mapped)








// 클로저 표현식 p134
var array = [2,3,1,5,4]
let a1 = array.sort { (a: Int, b:Int) -> Bool in
    return a < b
}
let a2 = array.sort({a,b -> Bool in return a < b })
let a3 = array.sort({a,b -> Bool in a < b})
let a4 = array.sort({a,b in a < b})
let a5 = array.sort({ $0 < $1})
let a6 = array.sort { $0 < $1 }






