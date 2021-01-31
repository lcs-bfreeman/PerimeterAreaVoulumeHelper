//
//  main.swift
//  PerimeterAreaVoulumeHelper
//
//  Created by Ben Freeman on 2021-01-29.
//

import Foundation

// MARK: Input


print("Surface Area Calculator")
print("```````````````````````")
print(",,,,,,,,,,,,,,,,,,,,,,,", terminator: "")
print("Type the shape you would like to calculate", terminator: "")
print("""
      Cylinder: 1


    
    
    
    
    
    
    
    """)

var shapeInput = readLine()!

var cylinderRadius = 0.0
var cylinderHight = 0.0

switch shapeInput {
case "1":
    print("What is the radius")
    
var cylinderRadius = readLine()!
    
    print("What is the hight")
    
var cylinderHight = readLine()!
    
    let puti = surfaceArea( r: cylinderRadius, h: cylinderHight)

    
default:
    break
}




// MARK: Functions
func surfaceArea( r: Double, h: Double) -> Double {
    return Double.pi * pow(r, 2.0) + Double.pi * pow(r, 2.0) * h
}
    
    
    
        
   


let givenLength = 10.0 // seting double using type infrence
let givenWidth: Double = 2 // set to a double using type anotation

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



// MARK: Process


// MARK: Output

