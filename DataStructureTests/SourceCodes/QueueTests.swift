//
//  QueueTests.swift
//  DataStructureTests
//
//  Created by Soyeon Lee on 8/28/23.
//

import XCTest
import DataStructure

final class QueueTests: XCTestCase {
    
    func testInitWithNoParam() throws {
        var queue = Queue<Int>()
        XCTAssertEqual(queue.elements, [])
    }
    
    func testInitWithParam() throws {
        var queue = Queue<Int>([1, 2, 3])
        XCTAssertEqual(queue.elements, [1, 2, 3])
    }
    
    func testEnqueue() throws {
        var queue = Queue<Int>()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        XCTAssertEqual(queue.elements, [1, 2, 3])
    }
    
    func testDequeue() throws {
        var queue = Queue<Int>([1,2,3])
        XCTAssertEqual(queue.dequeue(), 1)
        XCTAssertEqual(queue.elements, [2, 3])
    }
    
    func testEnqueueAndDequeue() throws {
        var queue = Queue<Int>()
        queue.enqueue(10)
        queue.enqueue(20)
        queue.enqueue(30)
        XCTAssertEqual(queue.dequeue(), 10)
        XCTAssertEqual(queue.dequeue(), 20)
        XCTAssertEqual(queue.elements, [30])
    }
    
    func testDequeueEmptyQueue() throws {
        var queue = Queue<Int>()
        XCTAssertNil(queue.dequeue())
        XCTAssertEqual(queue.elements, [])
    }
    
}
