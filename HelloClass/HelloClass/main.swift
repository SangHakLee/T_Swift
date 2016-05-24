//
//  main.swift
//  HelloClass
//
//  Created by 이상학 on 2016. 5. 24..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation

//print("Hello, World!")

var obj = MyClass()

//프로퍼티에 저장
obj.intproperty = 10
obj.floatProperty = 3.1

//프로퍼티에서 값을 얻어오기
let val = obj.floatProperty
print (val)



var iu = Person()
iu.birthYear = 1993 // 저장 프로퍼티
let age = iu.age // 계산 프로퍼티 get
print ("age : ", age)



var rect = Rectangle()
rect.width = 30
rect.height = 30
print ("isSquare ? ", rect.isSquare)


var obj1 = MyClass2()
var obj2 = obj1
obj1.value = 10
print ("obj2.value : ", obj2.value)

var obj3 = MyClass2()
print ("obj1 === obj2 :", obj1 === obj2)
print ("obj1 === obj3 :", obj1 === obj3)


let counter = Counter()
counter.increment()
print ("counter.count : ", counter.count)

counter.incrementBy(5)
print ("counter.count : ", counter.count)

counter.incrementBy(3, numberOfTimes: 5)
print ("counter.count : ", counter.count)