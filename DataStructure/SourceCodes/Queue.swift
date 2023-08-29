//
//  Queue.swift
//  DataStructure
//
//  Created by Soyeon Lee on 8/28/23.
//

import Foundation

public struct Queue<T> {
    
    public private(set) var elements: [T]
    
    public init(_ elements: [T]? = nil) {
        self.elements = elements ?? []
    }
    
    public mutating func enqueue(_ element: T) {
        return elements.append(element)
    }
    
    public mutating func dequeue() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
        
    }
}
