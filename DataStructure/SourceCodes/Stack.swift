//
//  Stack.swift
//  DataStructure
//
//  Created by Soyeon Lee on 8/31/23.
//

import Foundation

public struct Stack<T> {
    
    public private(set) var elements: [T]
    
    public init(_ elements: [T]? = nil) {
        self.elements = elements ?? []
    }
    
    public mutating func push(_ element: T) {
        elements.append(element)
    }
    
    public mutating func pop() -> T? {
        
        var lastElement = elements.last
        
        if lastElement == nil {
            return nil
        } else {
            return elements.removeLast()
        }
    }
    
    public mutating func peek() -> T? {
        return elements.last
    }
}
