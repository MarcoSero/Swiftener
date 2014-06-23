//
//  FunctionalExtensions.swift
//  Algorithms
//
//  Created by Marco Sero on 15/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

extension Array {
  
  var head: T? {
    if count == 0 {
      return nil
    }
    return self[0]
  }
  
  var tail: Array {
    if count == 0 {
      return []
    }
    return Array(dropFirst(self))
  }
  
  var split: (Array, Array) {
    let i = Int(ceil(Double(count) / 2))
    return (Array(self[0..i]), Array(self[i..count]))
  }
  
}