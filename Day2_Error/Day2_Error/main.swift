//
//  main.swift
//  Day2_Error
//
//  Created by 이상학 on 2016. 5. 25..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation

func sayHello() {
    print("Hello")
}

enum MyError : ErrorType{
    case MyFault
    case YourFault
}

func sayGoodbye() throws{
    print("goodbye");
    throw MyError.MyFault
}

sayHello()
do{
    try sayHello()
}
catch let error {
    print("Error! : \(error)")
}

func sayHowAreYou() throws -> String {
    throw MyError.YourFault
    defer { // finish
        print("Finish")
    }
}
let ret = try? sayHowAreYou() //  throws 있기때문에 try, ?는 에러를 nil로 변환
print(ret)