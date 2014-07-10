//
//  Ints.swift
//  Swiftener
//
//  Created by Marco Sero on 09/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

extension Int {
  
  func times(block: (Int) -> Void) {
    for i in 0..<self {
      block(i)
    }
  }
  
  static func random() -> UInt32 {
    return arc4random()
  }
  
  static func random(#limit: UInt32) -> UInt32 {
    return arc4random() % limit
  }
  
  static func random(#leftLimit: UInt32, rightLimit: UInt32) -> UInt32 {
    return leftLimit + (arc4random() % rightLimit)
  }
  
}