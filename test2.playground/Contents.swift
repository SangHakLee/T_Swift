//: Playground - noun: a place where people can play

import UIKit


// 튜플
var one = (1, "one", "일")

one.2
one.2 = "하나"

let two = (num : 2, eng : "two", kor: "둘")
two.num
two.kor


(1,"1") == (1,"1")
(1, "one") < (2, "two")
(1, "one") < (1, "first")

var second = two
second.eng = "Second"
second.kor = "두번째"
second

let(num, _, _) = two //언더스코프는 가져오지 않는다.
num


// 배열
var intArray : [Int] = [1,2,3,4,5]
let strArray = ["A", "B", "C"]
let floatArray = Array<Float>([1.1, 2.2, 3.3])

var emptyArray = [Int]()
var emptyArray2 = Array<Double>()
var emptyArray3 : [String] = []

floatArray.count
emptyArray.isEmpty

let element1 = intArray[0]
let element2 = floatArray[1]

var intArray2 : [Int] = [1,2,3]
intArray2.append(5)
intArray2.insert(4, atIndex: 3)
intArray2 += [6,7]
intArray2.removeLast()
intArray2.removeAtIndex(2)
intArray2[3]
intArray2
intArray2[2]
intArray2
intArray2[3..<5]
intArray2


//밸류 타입
var array1 : [Int] = [1,2,3]
var array2 = array1

array1.append(4)
array1
array2

if array1 == array2 {
    print("같은 배열")
}


//딕셔너리
var dic = ["1월" : "January", "2월" : "February", "3월" : "March"]
var dic2 : [String : Int] = ["일" : 1, "이" : 2, "삼" : 3]
var dic3 : Dictionary<Int, String> = [1:"One", 2:"Two", 3:"Three"]



// if 문
var array = [1,2,-1,3]

for i in array{
    if i < 0 {
        break
    }
    print(i)
}

for i in array{
    guard i >= 0 else{ // 보통 if 문과는 반대임
         break
    }
    print(i)
}