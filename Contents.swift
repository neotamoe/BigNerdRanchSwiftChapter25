//: Playground - noun: a place where people can play

import UIKit


// for custom value types need to know how to compare themselves to other instances (equatable and comparable)
// if your type conforms to Equatable, it also now has a working implementation of the != function
// Swift defines the > >= and <= in terms of the < and == operators so Comparable only requires you to overload the < operator.  If type conforms to Comparable, it will get implementations of the other operators for free!
// comparable inherits from equatable -- which means if your type conforms to comparable then you don't need to explicitly declare conformance to Equatable so don't need to write out "struct Point: Equatable, Comparable {"

struct Point: Comparable {
    let x: Int
    let y: Int
    
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    
    static func <(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }

}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)
let abEqual = ( a == b )
let abNotEqual = (a != b)

let c = Point(x: 2, y: 6)
let d = Point(x: 3, y: 7)
let cdEqual = (c == d)
let cLessThanD = (c < d)

let cLessThanEqualD = (c <= d)
let cGreaterThanD = (c > d)
let cGreaterThanEqualD = (c >= d)



