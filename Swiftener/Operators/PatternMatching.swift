//
//  PatternMatching.swift
//  Swiftener
//
//  Created by Marco Sero on 23/06/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

public func ~= <T: Comparable>(left: [T], right: [T]) -> Bool {
  return left == right
}