//
//  StringSubscript.swift
//  Swiftener
//
//  Created by Marco Sero on 05/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

// CODE AND IDEA FROM Ole Begemann's "Strings in Swift" http://oleb.net/blog/2014/07/swift-strings/

public extension String {
  
  subscript(integerIndex: Int) -> Character {
    let index = advance(startIndex, integerIndex)
    return self[index]
  }
  
  subscript(integerRange: Range<Int>) -> String {
    let start = advance(startIndex, integerRange.startIndex)
    let end = advance(startIndex, integerRange.endIndex)
    let range = start..<end
    return self[range]
  }
  
}
