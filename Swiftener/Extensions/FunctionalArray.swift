//
//  FunctionalExtensions.swift
//  Algorithms
//
//  Created by Marco Sero on 15/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

extension Array {
  
// APPLE PLEASE FIXME!!
// http://openradar.appspot.com/17465144
//  var head: T! {
//    if isEmpty {
//      return nil
//    }
//    return self[0]
//  }
  
  var tail: Array {
    if isEmpty {
      return []
    }
    return Array(dropFirst(self))
  }
  
  var split: (Array, Array) {
    let i = Int(ceil(Double(count) / 2))
    return (Array(self[0..i]), Array(self[i..count]))
  }
  
}