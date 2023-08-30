//
//  CircularQueueTests.swift
//  DataStructureTests
//
//  Created by Soyeon Lee on 8/29/23.
//

import XCTest
import DataStructure

final class CircularQueueTests: XCTestCase {
    
    
    func testInitWithParam() throws {
        let circularQueue = CircularQueue<Int>(5)
        XCTAssertEqual(circularQueue.queueElements, [nil, nil, nil, nil, nil])
    }
    
   
    func testCircularEnqueue() throws {
        var circularQueue = CircularQueue<Int>(5)
        XCTAssertEqual(circularQueue.circularEnqueue(10), [10, nil, nil, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(20), [10, 20, nil, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(30), [10, 20, 30, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(40), [10, 20, 30, 40, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(50), [10, 20, 30, 40, 50])
        
    }
    
    
    func testCircularDequeue() throws {
        var circularQueue = CircularQueue<Int>(5)
        XCTAssertEqual(circularQueue.circularEnqueue(10), [10, nil, nil, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(20), [10, 20, nil, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(30), [10, 20, 30, nil, nil])
        
        XCTAssertEqual(circularQueue.circularDequeue(), [nil, 20, 30, nil, nil])
        
        XCTAssertEqual(circularQueue.circularDequeue(), [nil, nil, 30, nil, nil])

    }

    func testCirculrEnqueueAndDequeue() throws {
        var circularQueue = CircularQueue<Int>(5)
        XCTAssertEqual(circularQueue.circularEnqueue(10), [10, nil, nil, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(20), [10, 20, nil, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(30), [10, 20, 30, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(40), [10, 20, 30, 40, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(50), [10, 20, 30, 40, 50])
        XCTAssertEqual(circularQueue.circularDequeue(), [nil, 20, 30, 40, 50])
        XCTAssertEqual(circularQueue.circularEnqueue(60), [60, 20, 30, 40, 50])


    }

    func testDequeueEmptyCircularQueue() throws {
        var circularQueue = CircularQueue<Int>(5)
        XCTAssertEqual(circularQueue.circularDequeue(), [nil, nil, nil, nil, nil])
    }
    
    func testIsFull() throws {
        var circularQueue = CircularQueue<Int>(5)
             
        XCTAssertTrue(circularQueue.isEmpty()) // Now the queue is full
        XCTAssertEqual(circularQueue.circularEnqueue(10), [10, nil, nil, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(20), [10, 20, nil, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(30), [10, 20, 30, nil, nil])
        XCTAssertEqual(circularQueue.circularEnqueue(40), [10, 20, 30, 40, nil])
        XCTAssertTrue(circularQueue.isFull()) // Now the queue is full
        XCTAssertEqual(circularQueue.circularEnqueue(50), [10, 20, 30, 40, 50])
       
      


    }
}
