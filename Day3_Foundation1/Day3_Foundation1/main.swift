//
//  main.swift
//  Day3_Foundation1
//
//  Created by 이상학 on 2016. 5. 26..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation

class MyClass : NSObject{
    var a : Int = 0
    override init(){
        
    }
    override func isEqual(object: AnyObject?) -> Bool {
        return true
    }
    
    func sayHello(){
    }
    func sayHello(who : String){}
}

let obj1 = MyClass()
let obj2 = MyClass()
print ( obj1.isEqual(obj2) )
print ( obj1 == obj2 )

let selector = #selector(MyClass.sayHello as (MyClass) -> () -> ())
let selector2 = Selector("sayHello::")
