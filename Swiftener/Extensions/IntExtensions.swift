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
    return Int(arc4random())
  }
  
  static func random(#limit: Int) -> Int {
    return Int(arc4random()) % limit
  }
  
  static func random(range: Range<Int>) -> Int {
    return range.startIndex + (Int(arc4random()) % range.endIndex)
  }
  
}