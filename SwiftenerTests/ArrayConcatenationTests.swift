//
//  ArrayConcatenationTests.swift
//  Swiftener
//
//  Created by Marco Sero on 24/06/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

import Quick
import Nimble
import Swiftener

class ArrayConcatenationTests: QuickSpec {
  override func spec() {
    describe("array concatenation") {
      
      context("when concatenating empty arrays") {
        
        let emptyArray: [Int] = []
        
        it("should concatenate two empty arrays creating an empty array") {
          expect(emptyArray ++ emptyArray).to.equal([])
        }
        
        it("should concatenate an empty array with a non empty one on both sides") {
          expect(emptyArray ++ 1).to.equal([1])
        }
        
      }
      
      context("when concatenating a non empty array with a value") {
        
        let array: [Int] = [1,2,3]
        
        it("should concatenate a non empty array with a value creating one that contains the old array and the new value") {
          expect(array ++ 4).to.equal([1,2,3,4])
          expect(0 ++ array).to.equal([0,1,2,3])
          expect(0 ++ array ++ 4).to.equal([0,1,2,3,4])
        }
      
      }
      
      context("when concatenating non empty arrays") {
        
        let arrayA: [Int] = [1,2,3]
        let arrayB: [Int] = [4,5,6]
        let expectedResult: [Int]  = [1,2,3,4,5,6]
        
        it("should concatenate two non empty arrays creating one that contains all the items") {
          expect(arrayA ++ arrayB).to.equal(expectedResult)
        }
        
      }
      
    }
  }
}
