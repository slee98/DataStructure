//
//  Circular Queue.swift
//  DataStructure
//
//  Created by Soyeon Lee on 8/29/23.
//

import Foundation

public struct CircularQueue<T> {
    
    public private(set) var queueElements: [T?]
    public var capacity: Int
    public var front: Int = 0
    public var rear: Int = 0
    
    
    public init(_ capacity: Int) {
        self.capacity = capacity
        self.queueElements = Array(repeating: nil, count: capacity)
    }
    
    public mutating func circularEnqueue(_ element: T) -> [T?] {
        if queueElements[rear] == nil {
            queueElements[rear] = element
            rear = (rear + 1) % capacity
            return  queueElements

        } else {
            // Queue is full
            return queueElements
        }
    }
    
    public mutating func circularDequeue() -> [T?] {
        if queueElements[front] != nil {
            queueElements[front] = nil
            front = (front + 1) % capacity
            return queueElements
            
        } else {
          
            return queueElements
        }
    }
    
    public func isFull() -> Bool {
        return (rear + 1) % capacity == front
       }
    
    public func isEmpty() -> Bool {
        return front == rear
    }
}
