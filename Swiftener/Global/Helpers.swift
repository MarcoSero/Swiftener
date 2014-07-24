//
//  Helpers.swift
//  Swiftener
//
//  Created by Marco Sero on 09/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

public func MAX<T: Comparable>(a: T, b: T) -> T {
  if a >= b {
    return a
  }
  return b
}

public func MIN<T: Comparable>(a: T, b: T) -> T {
  if a <= b {
    return a
  }
  return b
}