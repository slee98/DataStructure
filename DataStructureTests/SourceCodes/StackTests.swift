//
//  StackTests.swift
//  DataStructureTests
//
//  Created by Soyeon Lee on 8/31/23.
//

import XCTest
import DataStructure

final class StackTests: XCTestCase {
    
    func testInitWithNoParam() throws {
        let stack = Stack<Int>()
        XCTAssertEqual(stack.elements, [])
    }
    
    func testInitWithParam() throws {
        let stack = Stack<Int>([1, 2, 3])
        XCTAssertEqual(stack.elements, [1, 2, 3])
    }
    
    func testPush() throws {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        XCTAssertEqual(stack.elements, [1, 2, 3])
    }
    
    func testPop() throws {
        var stack = Stack<Int>([1, 2, 3])
        XCTAssertEqual(stack.pop(), 3)
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertEqual(stack.elements, [1])
    }
    
    func testPeek() throws {
        var stack = Stack<Int>([1, 2, 3])
        XCTAssertEqual(stack.peek(), 3)
        XCTAssertEqual(stack.elements, [1, 2, 3])
    }
    
    func testEdgeCases() throws {
        var stack = Stack<Int>()
        XCTAssertEqual(stack.pop(), nil)

    }
   
}
