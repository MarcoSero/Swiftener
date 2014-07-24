//
//  Operators.swift
//  Algorithms
//
//  Created by Marco Sero on 15/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

operator infix ++ { associativity left precedence 140 }

public func ++ <T>(left: [T], right: [T]) -> [T] {
  var a = [T](left)
  a += right
  return a
}

public func ++ <T>(left: T, right: [T]) -> [T] {
  return [left] ++ right
}

public func ++ <T>(left: [T], right: T) -> [T] {
  return left ++ [right]
}
