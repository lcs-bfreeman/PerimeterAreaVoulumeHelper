//
//  main.swift
//  PerimeterAreaVoulumeHelper
//
//  Created by Ben Freeman on 2021-01-29.
//

import Foundation

// MARK: Input

// This is my "interace" where I prompt my users to input there shapes
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

/// Changes the shape code that will run
// The switch is the most important part of the code and is what makes it organised and able to run the way it does
// MARK: Switch: This switch statment allows me to use whatever value the user inputs and have which ever one it is decide what function it will go though
switch shapeInput {
case "1":
    print("What is the radius of the cylinder in cm?")
    
    let cylinderRadius = readLine()!
    
    print("What is the hight of the cylinder in cm?")
    
    let cylinderHight = readLine()!
    // This is where the inputs from the user are put into the function to be outputed
    let puti = surfaceArea( r: Double(cylinderRadius)!, h: Double(cylinderHight)!)
    // this is the call site for cylinder
    print("The surface are of the cylinder was \(puti)cm^2")
    
case "2":
    print("What is the radius of the sphere in cm?")
    // this shape just needs the radius
    let sphereRadius = readLine()!
    let puti = sphereSurfaceArea( r: Double(sphereRadius)!)
    // the call site for the sphere is here
    print("The surface area of your sphere was \(puti)cm^2 ")
    
case "3":
    print("What is the radius of the cone in cm?")
    let coneRadius = readLine()!
    print("What is the Side Length of the cone in cm?")
    let coneSide = readLine()!
    // both value cone radius and cone side lenth are needed
    let puti = coneSurfaceArea( r: Double(coneRadius)!, s: Double(coneSide)!)
    // Here is the call site
    print("The surface area of your cone is \(puti)cm^2")
    
case "4":
    print("What is the b length for the Squarebased pyramid in cm")
    let pyramidB = readLine()!
    print("What is the side length of the pyrimid in cm")
    let pyramidSide = readLine()!
    let puti = pyramidSurfaceArea( b: Double(pyramidB)!, s: Double(pyramidSide)!)
    // call site
    print("The surface area of the SquareBased pyrimid is \(puti)cm^2")
    
case "5":
    print("What is the width of the Rectangular prism in cm?")
    let widthRectangle = readLine()!
    print("What is the hight of the Rectangular prism in cm?")
    let hightRectangle = readLine()!
    print("What is the length of the Rectangular prism in cm?")
    let lengthRectangle = readLine()!
    let puti = rectangularPrismSurfaceArea( w: Double(widthRectangle)!, h: Double(hightRectangle)!, l: Double(lengthRectangle)!)
    //call site
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
    // call site
    print("The surface area of the Triangular Prism is \(puti)cm^2")
    // after each variable in the print there is a cm^2. The ^2 is just there to indicate that it is squared and not just regular cm
default:
    break
}



// MARK: Functions






/// This function finds the surface area of a cylinder
/// - Parameters:
///   - r: r is the radius. The radius is the radius of the base or the top (They are the same)
///   - h: h is the hight. The hight is the base of the cylinder to the top in cm
/// - Returns: This function takes values inputed by the user and sends them into an equation to get the surface area of a cylinder
func surfaceArea( r: Double, h: Double) -> Double {
    
    return Double.pi * pow(r, 2.0) * r + Double.pi * pow(r, 2.0) * h
}



/// This function finds the surface area of a sphere
/// - Parameter r: r is the radius. This was the radius from the center of the sphere out
/// - Returns: This function takes the inputed radiius and multiplys it by 4 pi and itself to get the surface area of the desidered sphere
func sphereSurfaceArea( r: Double ) -> Double {
    
    return Double.pi * pow(r, r) * 4.0
}






/// This function finds the surface are of a cone
/// - Parameters:
///   - r: r is the center of the cones base out to the side in cm
///   - s: s is the length of the side from the edge of the base to the tip of the cone is cm
/// - Returns: This fucntion uses math and logic to take user inputs and find the surface area of a cone
func coneSurfaceArea( r: Double, s: Double) -> Double {
    
    return Double.pi * pow(r, r) + Double.pi * pow(r, s)
}





/// This function finds the surface area of a pyramid
/// - Parameters:
///   - b: b is the base. the base is a side length of the bottom of the pyrimid.
///   - s: s is the side. The side is the length from the center of the base to the top of the triangle on a right angel in cm
/// - Returns: This program takes a users inputs and turns them into variables taht are used to calculate the surface area of a pyramid
func pyramidSurfaceArea( b: Double, s: Double) -> Double {
    
    return b * b + 2.0 * b * s
}


/// This function finds the surface are of a rectangular prism
/// - Parameters:
///   - w: w is the width of one of the sides of the rectangular prism.
///   - h: h is the hight. The hight is from the top to the bottom on a 90 degree angle in cm
///   - l: the l is length. the length is the length of the longer side of the rectangular prism
/// - Returns: This function calculates the surface area of a rectangular prism using inputs from the user and putting them in place of mathimatic variables
func rectangularPrismSurfaceArea( w: Double, h: Double, l: Double) -> Double {
    
    return 2.0 * (w * h + l * w + l * h)
}



/// This function finds the surface area for a triangular prism
/// - Parameters:
///   - l: the l is the long face of the rectangle in cm. The face is just the triangles on each end of the prism
///   - h: h is the length from one triangular face to the other on the side.
///   - a: a is a length of the triangles faces side. If you looked at the triangles faces from a 2D angle you would see the side as a side of the triangle
///   - b: b is a length of the trianges faces side
///   - c: c is a length of the triangles faces side
/// - Returns: This function is designed to preform a math matical equation to solve for a triangular prism based on user inputs
func triangularPrismSurfaceArea( l: Double, h: Double, a: Double, b: Double, c: Double) -> Double {
    
    return b * l + a * h + b * h + c * h
}







// MARK: Output
//I wrote all of the call sites into the switch statments
