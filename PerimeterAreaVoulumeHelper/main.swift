//
//  main.swift
//  PerimeterAreaVoulumeHelper
//
//  Created by Ben Freeman on 2021-01-29.
//

import Foundation

// MARK: Functions

/// Finds the area of a rectangle
/// - Parameter length: length of rectangle
/// - Parameter width: width of rectangle
/// - Returns: area of the rectangle
func areaOfRectangle(length: Double, width: Double) -> Double {
    
    return length * width
    
}

/// Finds the area of a circle
/// - Parameter radius: the distence from the center of the circle to it's outer edge
/// - Returns: area of the circle
func areaOfCircle(radius: Double) -> Double {
    return Double.pi * pow(radius, 2.0)
}

// MARK: Input
let givenLength = 10.0 // seting double using type infrence
let givenWidth: Double = 2 // set to a double using type anotation

// MARK: Process
let area = areaOfRectangle(length: givenLength, width: givenWidth)

// MARK: Output
print("the are is \(area) square units")        // example of "string interpolation"
                                                //(print the constants as a variable)
