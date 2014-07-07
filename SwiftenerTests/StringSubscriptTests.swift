//
//  StringSubscriptTests.swift
//  Swiftener
//
//  Created by Marco Sero on 05/07/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

import Quick
import Nimble
import Swiftener

class StringSubscriptTests: QuickSpec {
  override func spec() {
    describe("string subscript") {
      
      context("when accessing strings with subscript") {

        let alphabet: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let empty: String = ""
        
        it("should return the right character accessing with index") {
        // re-enable this once Character will finally make sense
//          let character: Character = alphabet[1]
//          expect(character).to.equal("1")
        }
        
        it("should return the right substring") {
          expect(alphabet[0..<2]).to.equal("AB")
        }
        
      }
    }
  }
}
