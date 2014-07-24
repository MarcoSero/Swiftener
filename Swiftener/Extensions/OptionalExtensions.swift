//
//  OptionalExtensions.swift
//  Swiftener
//
//  Created by Marco Sero on 17/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

public extension Optional {

  func or(defaultValue: T) -> T {
    if let value = self {
      return value
    }
    return defaultValue
  }
  
}
