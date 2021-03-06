//
//  Ints.swift
//  Swiftener
//
//  Created by Marco Sero on 09/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

//= Loops

extension Int {
  
  func times(block: (Int) -> Void) {
    for i in 0..<self {
      block(i)
    }
  }
}

//= Random numbers generators

extension Int {
  
  static func random() -> Int {
    return random(0..<Int.max)
  }
  
  static func random(limit: Int) -> Int {
    return random(0..<limit)
  }
  
  static func random(range: Range<Int>) -> Int {
    let bufferRangeLimit = MIN(range.startIndex, Int(Int32.max))..<MIN(range.endIndex, Int(Int32.max))
    return Int(arc4random_uniform(UInt32(bufferRangeLimit.endIndex - bufferRangeLimit.startIndex))) + bufferRangeLimit.startIndex
  }
  
}