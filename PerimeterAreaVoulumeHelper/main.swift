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
print("Type the corisponding number for the shape you would like to calculate", terminator: "")
print ("\n")
print("""
      Cylinder: 1
      Sphere: 2
      Cone: 3
    """)

var shapeInput = readLine()!


switch shapeInput {
case "1":
    print("What is the radius of the cylinder?")
    
let cylinderRadius = readLine()!
    
    print("What is the hight of the cylinder?")
    
let cylinderHight = readLine()!
    
    let puti = SurfaceArea( r: Double(cylinderRadius)!, h: Double(cylinderHight)!)

    print("The surface are of the cylinder was \(puti)")
    
case "2":
    print("What is the radius of the phere?")
    let sphereRadius = readLine()!
    let puti = sphereSurfaceArea( r: Double(sphereRadius)!)
    print("The surface area of the sphere was \(puti) ")
    
case "3":
    print("What is the radius of the cone?")
    let coneRadius = readLine()!
    print("What is the Side Length of the cone?")
    let coneSide = readLine()!
    
let puti = coneSurfaceArea( r: Double(coneSide)!, s: Double(coneRadius)!)
    print("The surface area of your cone is \(puti)")
    
default:
    break
}




// MARK: Functions
func SurfaceArea( r: Double, h: Double) -> Double {
    
    return Double.pi * pow(r, 2.0) * r + Double.pi * pow(r, 2.0) * h
}
func sphereSurfaceArea( r: Double ) -> Double {
    
    return Double.pi * pow(r, 4.0) * r
}

func coneSurfaceArea( r: Double, s: Double) -> Double {
    
    return Double.pi * pow(r, r) + Double.pi * pow(r, s)
}

//func SurfaceArea( r: Double, h: Double) -> Double {
//
//        return
//}


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

