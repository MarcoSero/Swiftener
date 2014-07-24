//
//  ArraysFunctions.swift
//  Swiftener
//
//  Created by Marco Sero on 09/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

public func zip<T, V>(a: [T], b: [V]) -> [(T, V)] {
  if a.isEmpty || b.isEmpty {
    return []
  }
  return (a.head, b.head) ++ zip(a.tail, b.tail)
}

public func unzip<T, V>(zipped: [(T, V)]) -> ([T], [V]) {
  return (zipped.map({ tuple in tuple.0 }), zipped.map({ tuple in tuple.1 }))
}