//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs:Int, rhs:Int) -> Int { return lhs + rhs }
    func subtract(lhs:Int, rhs:Int) -> Int { return lhs - rhs }
    func multiply(lhs:Int, rhs:Int) -> Int { return lhs * rhs }
    func divide(lhs:Int, rhs:Int) -> Int { return lhs / rhs }
    func mathOp(lhs:Int, rhs:Int, op:(Int, Int) -> Int) -> Int {
        return op(lhs,rhs)
    }
    
    func add(_ arg: [Int]) -> Int {
        var res = 0
        for index in 0..<arg.count {
            res += arg[index]
        }
        return res
    }
    
    func multiply(_ arg: [Int]) -> Int {
        var res = 1
        for index in 0..<arg.count {
            res *= arg[index]
        }
        return res
    }
    
    func avg(_ arg: [Int]) -> Int {
        var res = 0
        for index in 0..<arg.count {
            res += arg[index]
        }
        return res/arg.count
    }
    
    func count(_ arg: [Int]) -> Int {
        return arg.count
    }
    
    func mathOp(args: [Int], beg: Int, op:(Int, Int) -> Int) -> Int {
        var res = beg
        for i in 0..<args.count{
            res = op(res, args[i])
        }
        return res
    }
    
    func add(lhs: (fir : Int, sec: Int), rhs: (fir: Int, sec: Int)) -> (Int, Int) {
        print ("\(lhs.fir) + \(rhs.fir)")
        return (lhs.fir + rhs.fir, lhs.sec+rhs.sec)
    }
    
    func subtract(lhs: (fir : Int, sec: Int), rhs: (fir: Int, sec: Int)) -> (Int, Int) {
        return (lhs.fir - rhs.fir, lhs.sec - rhs.sec)
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) ->  [String: Int] {
       return ["x" : lhs["x"]! + rhs["x"]!, "y" : lhs["y"]! + rhs["y"]!]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) ->  [String: Int] {
        return ["x" : lhs["x"]! - rhs["x"]!, "y" : lhs["y"]! - rhs["y"]!]
    }
}
