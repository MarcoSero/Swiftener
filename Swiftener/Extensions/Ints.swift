//
//  Ints.swift
//  Swiftener
//
//  Created by Marco Sero on 09/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

extension Int {
  
  func times(block: () -> Void) {
    for i in 0..<self {
      block()
    }
  }
  
}