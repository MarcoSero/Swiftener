//
//  IntTests.swift
//  Swiftener
//
//  Created by Marco Sero on 10/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

import Quick
import Nimble
import Swiftener

func testRandomGeneratorWithRange(range: Range<Int>) {
  let r1 = Int.random(range)
  expect(r1).to.beGreaterThanOrEqualTo(range.startIndex)
  expect(r1).to.beLessThan(range.endIndex)
}

class IntTests: QuickSpec {
  override func spec() {
    describe("int extensions") {
      
      context("when generating random numbers") {
        
        it("should generate random numbers, so almost always different") {
          expect(Int.random() == Int.random()).to.beFalse()
          expect(Int.random() == Int.random()).to.beFalse()
          expect(Int.random() == Int.random()).to.beFalse()
          expect(Int.random() == Int.random()).to.beFalse()
        }
        
        it("should generate random numbers with a limit") {
          expect(Int.random(100)).to.beLessThan(100)
          expect(Int.random(100_000)).to.beLessThan(100_000)
          expect(Int.random(100_000_000)).to.beLessThan(100_000_000)
          expect(Int.random(100_000_000_000)).to.beLessThan(100_000_000_000)
        }
        
        it("should generate random numbers within a range") {
          testRandomGeneratorWithRange(0..<100)
          testRandomGeneratorWithRange(100..<100_000)
          testRandomGeneratorWithRange(100_000..<100_000_000)
          testRandomGeneratorWithRange(100_000_000..<100_000_000_000)
        }
        
      }
    }
  }
}