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
    
    /// Index pointing to next index position to queue incoming element.
    private var enqueueIndex: Int = 0
    /// Index pointing to next index position to dequeue.
    private var dequeueIndex: Int = 0
    
    
    public init(capacity: Int) {
        self.capacity = capacity
        self.queueElements = Array(repeating: nil, count: capacity)

    }
    
    @discardableResult
    public mutating func enqueue(_ element: T) -> Bool {
        guard !isFull() else {
            return false
        }
        
        queueElements[enqueueIndex] = element
        enqueueIndex = (enqueueIndex + 1) % capacity
        return true
    }
    
    /// Return nil when the queue is empty.
    @discardableResult
    public mutating func dequeue() -> T? {
        guard !isEmpty() else {
            return nil
        }
        let returnValue = queueElements[dequeueIndex]
        queueElements[dequeueIndex] = nil
        dequeueIndex = (dequeueIndex + 1) % capacity
        return returnValue
    }
    
    public func isFull() -> Bool {
        return queueElements[enqueueIndex] != nil
    }
    
    public func isEmpty() -> Bool {
        return queueElements[dequeueIndex] == nil
    }
}
