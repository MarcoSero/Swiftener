//
//  OptionalTests.swift
//  Swiftener
//
//  Created by Marco Sero on 17/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

import Quick
import Nimble
import Swiftener

class OptionalTests: QuickSpec {
  override func spec() {
    describe("optional tests") {
      
      context("when an optional doesn't have a value") {
        
        let optionalValue: String? = nil
        let defaultString = "default"
        
        it("should give the default value with or") {
//          expect(optionalValue.or(defaultString)).to.equal(defaultString)
        }
        
      }
      
      context("when an optional does have a value") {
        
        let optionalValue: String? = "Marco"
        let defaultString = "default"
        
        it("should give the default value with or") {
//          expect(optionalValue.or(defaultString)).to.equal("Marco")
        }
        
      }
      
    }
  }
}