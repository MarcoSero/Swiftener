//
//  PatternMatchingTests.swift
//  Swiftener
//
//  Created by Marco Sero on 24/06/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

import Quick
import Nimble
import Swiftener

class PatternMatchingTests: QuickSpec {
  override func spec() {
    describe("pattern matching overloading") {
      
      context("when overloading pattern matching for arrays") {
        
        let emptyArray: [Int] = []
        let nonEmptyArray: [Int] = [1,2,3]
        
        it("should match an empty array") {
          switch (emptyArray) {
          case emptyArray:
            expect(true).to.beTrue()
          default:
            expect(false).to.beTrue()
          }
          
          switch (emptyArray) {
          case nonEmptyArray:
            expect(false).to.beTrue()
          default:
            expect(true).to.beTrue()
          }
        }
        
        it("should match a non empty array") {
          switch (nonEmptyArray) {
          case nonEmptyArray:
            expect(true).to.beTrue()
          default:
            expect(false).to.beTrue()
          }
          
          switch (nonEmptyArray) {
          case emptyArray:
            expect(false).to.beTrue()
          default:
            expect(true).to.beTrue()
          }
        }
        
      }
        
    }
  }
}