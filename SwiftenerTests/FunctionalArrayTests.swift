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

class FunctionalArray: QuickSpec {
  override func spec() {
    describe("functional array extension") {
      
        context("when the array is empty") {
        
          let testArray: Int[] = []
          
          it("head should be nil") {
//            expect(testArray.head).to.beNil()
          }
          
          it("tail should return an empty array") {
            expect(testArray.tail).to.equal([])
          }
          
          it("should split the array into 2 empty arrays") {
            expect(testArray.split.0).to.equal([])
            expect(testArray.split.1).to.equal([])
          }
        
      }
      
      context("when the array has one element") {
        
        let value: Int = 1
        let testArray: Int[] = [value]
        
        it("head should be nil") {
//          expect(testArray.head).to.equal(value)
        }
        
        it("tail should return an empty array") {
          expect(testArray.tail).to.equal([])
        }
        
        it("should split the array into 2 arrays with the same value") {
          expect(testArray.split.0).to.equal([value])
          expect(testArray.split.1).to.equal([])
        }
        
      }
      
      context("when the array has many elements") {
        
        let testArray: Int[] = [1, 2, 3]
        
        it("head should be nil") {
//          expect(testArray.head).to.equal(1)
        }
        
        it("tail should return an empty array") {
          expect(testArray.tail).to.equal([2, 3])
        }
        
        it("should split the array into 2 arrays with the same value") {
          expect(testArray.split.0).to.equal([1, 2])
          expect(testArray.split.1).to.equal([3])
        }
        
      }
      
    }
  }
}