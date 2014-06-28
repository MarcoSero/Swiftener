//
//  SwiftBug.swift
//  Swiftener
//
//  Created by Marco Sero on 28/06/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

// TODO: remove it once apple fix the bug
extension Array {
  var head: T! {
    if isEmpty {
      return nil
    }
    return self[0]
  }
}