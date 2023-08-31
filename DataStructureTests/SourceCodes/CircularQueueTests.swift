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
        let circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertEqual(circularQueue.queueElements, [nil, nil, nil, nil, nil])
    }
    
   
    func testenqueue() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.enqueue(30)
        circularQueue.enqueue(40)
        circularQueue.enqueue(50)

        XCTAssertEqual(circularQueue.queueElements, [10, 20, 30, 40, 50])
        
    }
    
    
    func testdequeue() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        circularQueue.dequeue()
        circularQueue.dequeue()
        circularQueue.dequeue()
        circularQueue.dequeue()
        circularQueue.dequeue()
        
        XCTAssertEqual(circularQueue.queueElements, [nil, nil, nil, nil, nil])
    }

    func testCirculrEnqueueAndDequeue() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.enqueue(30)
        circularQueue.dequeue()
        circularQueue.dequeue()
        
        XCTAssertEqual(circularQueue.queueElements, [nil, nil, 30, nil, nil])


    }

    func testDequeueEmptyCircularQueue() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertEqual(circularQueue.dequeue(),nil)
    }
    
    func testIsNotFull() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertFalse(circularQueue.isFull())
        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.enqueue(30)
        circularQueue.enqueue(40)

        XCTAssertEqual(circularQueue.queueElements, [10, 20, 30, 40, nil])
        
        XCTAssertFalse(circularQueue.isFull())
    }
    
    func testIsFull() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertFalse(circularQueue.isFull())
        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.enqueue(30)
        circularQueue.enqueue(40)
        circularQueue.enqueue(50)

        XCTAssertEqual(circularQueue.queueElements, [10, 20, 30, 40, 50])
        
        XCTAssertTrue(circularQueue.isFull())
    }
    
    func testIsFullMultiOperations() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertFalse(circularQueue.isFull())
        XCTAssertTrue(circularQueue.isEmpty())

        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.enqueue(30)
        circularQueue.enqueue(40)
        circularQueue.enqueue(50)
        XCTAssertFalse(circularQueue.isEmpty())

        circularQueue.dequeue()
        XCTAssertFalse(circularQueue.isEmpty())

        circularQueue.dequeue()
        circularQueue.dequeue()
        circularQueue.dequeue()
        XCTAssertFalse(circularQueue.isEmpty())

        circularQueue.enqueue(60)
        circularQueue.enqueue(70)
        circularQueue.enqueue(80)
        circularQueue.enqueue(90)

        XCTAssertEqual(circularQueue.queueElements, [60, 70, 80, 90, 50])
        
        XCTAssertTrue(circularQueue.isFull())
    }
    
    func testEnqueueWhenFull() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertFalse(circularQueue.isFull())
        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.enqueue(30)
        circularQueue.enqueue(40)
        circularQueue.enqueue(50)

        XCTAssertEqual(circularQueue.queueElements, [10, 20, 30, 40, 50])
        XCTAssertTrue(circularQueue.isFull())
        
        XCTAssertFalse(circularQueue.enqueue(60))
        XCTAssertEqual(circularQueue.queueElements, [10, 20, 30, 40, 50])
    }
    
    func testIsEmpty() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertTrue(circularQueue.isEmpty())
        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.dequeue()
        circularQueue.dequeue()
        XCTAssertTrue(circularQueue.isEmpty())


    }
    
    func testIsNotEmpty() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertTrue(circularQueue.isEmpty())
        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.dequeue()
        XCTAssertFalse(circularQueue.isEmpty())
    }
    
    func testCapacity() throws {
        var circularQueue = CircularQueue<Int>(capacity: 5)
        XCTAssertEqual(circularQueue.capacity, 5)
        
        circularQueue.enqueue(10)
        circularQueue.enqueue(20)
        circularQueue.dequeue()
        XCTAssertEqual(circularQueue.capacity, 5)
    }
    
    
}
