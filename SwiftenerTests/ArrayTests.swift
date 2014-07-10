//
//  SwiftenerTests.swift
//  SwiftenerTests
//
//  Created by Marco Sero on 23/06/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

import Quick
import Nimble
import Swiftener

class FunctionalArrayTests: QuickSpec {
  override func spec() {
    describe("functional array extension") {
      
        context("when the array is empty") {
        
          let testArray: [Int] = []
          
//          it("should return a nil head") {
//            expect(testArray.head).to.beNil()
//          }
          
          it("should return an empty tail") {
            expect(testArray.tail).to.equal([])
          }
          
          it("should split the array into 2 empty arrays") {
            expect(testArray.split.0).to.equal([])
            expect(testArray.split.1).to.equal([])
          }
          
          it("should not be alone, but empty") {
            expect(testArray.isAlone).to.beFalse()
          }
          
//          it("should not have the last element") {
//            expect(testArray.last).to.beNil()
//          }
          
          it("should take 0 elements") {
            expect(testArray.take(2)).to.equal([])
          }
          
          it("should drop 0 elements") {
            expect(testArray.drop(2)).to.equal([])
          }
          
          it("should zip 2 empty arrays") {
            expect(zip([], [])).to.equal([])
          }
        
      }
      
      context("when the array has one element") {
        
        let value: Int = 1
        let testArray: [Int] = [value]
        
//        it("should have the only value as head") {
//          expect(testArray.head).to.equal(value)
//        }
        
        it("should return an empty tail") {
          expect(testArray.tail).to.equal([])
        }
        
        it("should split the array into 2 arrays with the same value") {
          expect(testArray.split.0).to.equal([value])
          expect(testArray.split.1).to.equal([])
        }
        
        it("should be alone") {
          expect(testArray.isAlone).to.beTrue()
        }
        
//          it("should not have the last element") {
//            expect(testArray.last).to.beNil()
//          }
        
        it("should take the element if the range is valid") {
          expect(testArray.take(0)).to.equal([])
          expect(testArray.take(1)).to.equal(testArray)
          expect(testArray.take(10)).to.equal(testArray)
        }
        
        it("should drop the only element") {
          expect(testArray.drop(1)).to.equal([])
          expect(testArray.drop(10)).to.equal([])
        }
        
//        it("should zip the arrays") {
//          let testString = "marco"
//          expect(zip(testArray, [testString])).to.equal([(value, testString)])
//        }
        
      }
      
      context("when the array has many elements") {
        
        let testArray: [Int] = [1, 2, 3]
        let testStrings = ["mr", "marco", "sero"]
        let zipped = [(1, "mr"), (2, "marco"), (3, "sero")]
        
//        it("should have a non-nil head") {
//          expect(testArray.head).to.equal(1)
//        }
        
        it("should have the correct tail") {
          expect(testArray.tail).to.equal([2, 3])
        }
        
        it("should split the array into 2 arrays with the same value") {
          expect(testArray.split.0).to.equal([1, 2])
          expect(testArray.split.1).to.equal([3])
        }
        
        it("should not be alone") {
          expect(testArray.isAlone).to.beFalse()
        }
        
//          it("should have the last element") {
//            expect(testArray.last).to.equal(3)
//          }
        
        it("should take the element if the range is valid") {
          expect(testArray.take(0)).to.equal([])
          expect(testArray.take(1)).to.equal([1])
          expect(testArray.take(3)).to.equal(testArray)
          expect(testArray.take(10)).to.equal(testArray)
        }
        
        it("should drop the only element") {
          expect(testArray.drop(0)).to.equal(testArray)
          expect(testArray.drop(1)).to.equal([2, 3])
          expect(testArray.drop(10)).to.equal([])
        }
        
//        it("should zip the arrays") {
//          expect(zip(testArray, testStrings)).to.equal(zipped)
//        }
        
//        it("should unzip the tuples") {
//          expect(unzip(zipped)).to.equal((testArray, testStrings))
//        }
        
      }
      
    }
  }
}