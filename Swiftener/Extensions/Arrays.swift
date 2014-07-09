//
//  FunctionalExtensions.swift
//  Algorithms
//
//  Created by Marco Sero on 15/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

extension Array {
  
  var isAlone: Bool {
    return self.count == 1
  }
  
// APPLE PLEASE FIXME!!
// http://openradar.appspot.com/17465144
  var head: T! {
    if isEmpty {
      return nil
    }
    return self[0]
  }
  
  var last: T! {
  if self.count <= 1 {
    return self.head
    }
    return self.tail.reverse().head
  }
  
  var tail: Array {
    if isEmpty {
      return []
    }
    return Array(dropFirst(self))
  }
  
  func take(n: Int) -> Array {
    let min = MIN(n, count)
    return Array(self[0..<min])
  }
  
  func drop(n: Int) -> Array {
    let max = MAX(count-n, 0)
    return Array(self[0..<max])
  }
  
  var split: (Array, Array) {
    let i = Int(ceil(Double(count) / 2))
    return (Array(self[0..<i]), Array(self[i..<count]))
  }
  
  func max<T: Comparable>() -> T! {
    if isEmpty || isAlone {
      return self.head as T
    }
    return MAX(self.head as T, self.tail.max())
  }
  
  func min<T: Comparable>() -> T! {
    if isEmpty || isAlone {
      return self.head as T
    }
    return MIN(self.head as T, self.tail.max())
  }
  
  func each<T>(block: (T) -> Void) {
    for value in self {
      block(value as T)
    }
  }
  
  func eachWithIndex<T>(block: (Int, T) -> Void) {
    for (index, value) in enumerate(self) {
      block(index, value as T)
    }
  }

  
//  func removeDuplicates<T: Hashable>() -> [T] {
//    var duplicatesMap: [T : Bool] = [:]
//    var uniquified: [T] = []
//    for consideredValue in self {
//      if let possibleEqualValue = duplicatesMap[consideredValue] {
//        if consideredValue != possibleEqualValue {
//          uniquified += consideredValue
//        }
//      }
//      duplicatesMap[consideredValue] = true
//    }
//    return uniquified
//  }
  
//  func withoutNil<T: Equatable>() -> [T] {
//    return self.filter({ $0 != nil })
//  }
    
//  func without<T: Equatable>(value: T) -> [T] {
//    return self.filter{ $0 != value }
//  }
  
}

