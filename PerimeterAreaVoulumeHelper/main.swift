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
print ("\n")
print("Type the corisponding number for the shape you would like to calculate the surface area for", terminator: "")
print ("\n")
print("""
      Cylinder: 1
      Sphere: 2
      Cone: 3
      Squarebased pyramid: 4
      Rectangular prism: 5
      Triangular prism: 6
    """)

var shapeInput = readLine()!


switch shapeInput {
case "1":
    print("What is the radius of the cylinder in cm?")
    
let cylinderRadius = readLine()!
    
    print("What is the hight of the cylinder in cm?")
    
let cylinderHight = readLine()!
    
    let puti = surfaceArea( r: Double(cylinderRadius)!, h: Double(cylinderHight)!)

    print("The surface are of the cylinder was \(puti)cm^2")
    
case "2":
    print("What is the radius of the sphere in cm?")
    let sphereRadius = readLine()!
    let puti = sphereSurfaceArea( r: Double(sphereRadius)!)
    print("The surface area of your sphere was \(puti)cm^2 ")
    
case "3":
    print("What is the radius of the cone in cm?")
    let coneRadius = readLine()!
    print("What is the Side Length of the cone in cm?")
    let coneSide = readLine()!
    
let puti = coneSurfaceArea( r: Double(coneRadius)!, s: Double(coneSide)!)
    print("The surface area of your cone is \(puti)cm^2")
    
case "4":
    print("What is the b length for the Squarebased pyramid in cm")
    let pyramidB = readLine()!
    print("What is the side length of the pyrimid in cm")
    let pyramidSide = readLine()!
    let puti = pyramidSurfaceArea( b: Double(pyramidB)!, s: Double(pyramidSide)!)
    print("The surface area of the SquareBased pyrimid is \(puti)cm^2")
    
case "5":
    print("What is the width of the Rectangular prism in cm?")
    let widthRectangle = readLine()!
    print("What is the hight of the Rectangular prism in cm?")
    let hightRectangle = readLine()!
    print("What is the length of the Rectangular prism in cm?")
    let lengthRectangle = readLine()!
    let puti = rectangularPrismSurfaceArea( w: Double(widthRectangle)!, h: Double(hightRectangle)!, l: Double(lengthRectangle)!)
    print("The surface area of the Rectangular Prism is \(puti)cm^2")
    
case "6":
    print("What is the length of the prisms face's in cm?")
    let prismFaceLength = readLine()!
    print("What is the hight of Triangular prism in cm?")
    let prismHight = readLine()!
    print("What is the length of value a in cm?")
    let prismSideA = readLine()!
    print("What is the length of value b in cm?")
    let prismSideB = readLine()!
    print("What is the length of value c in cm?")
    let prismSideC = readLine()!
    let puti = triangularPrismSurfaceArea( l: Double(prismFaceLength)!, h: Double(prismHight)!, a: Double(prismSideA)!, b: Double(prismSideB)!, c: Double(prismSideC)!)
    
    print("The surface area of the Triangular Prism is \(puti)cm^2")
    
default:
    break
}



// MARK: Functions
func surfaceArea( r: Double, h: Double) -> Double {
    
    return Double.pi * pow(r, 2.0) * r + Double.pi * pow(r, 2.0) * h
}
func sphereSurfaceArea( r: Double ) -> Double {
    
    return Double.pi * pow(r, r) * 4.0
}

func coneSurfaceArea( r: Double, s: Double) -> Double {
    
    return Double.pi * pow(r, r) + Double.pi * pow(r, s)
}

func pyramidSurfaceArea( b: Double, s: Double) -> Double {

    return b * b + 2.0 * b * s
}

func rectangularPrismSurfaceArea( w: Double, h: Double, l: Double) -> Double {

    return 2.0 * (w * h + l * w + l * h)
}

func triangularPrismSurfaceArea( l: Double, h: Double, a: Double, b: Double, c: Double) -> Double {

        return b * l + a * h + b * h + c * h
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




// MARK: Output
//I wrote all of the call sites into the switch statments
