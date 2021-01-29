//
//  main.swift
//  PerimeterAreaVolumeHelper
//
//  Created by Harris-Stoertz, Rowan on 2021-01-29.
//

import Foundation

// MARK: Functions

/// finds the surface area of a cylinder
/// - Parameters:
///   - radius: straight distance from the center of one of the cylinder's circular bases to the edge of the base
///   - height: the height of the cylinder
/// - Returns: surface area of the cylinder
func surfaceAreaOfCylinder(radius: Double, height: Double) -> Double {
    return 2.0 * Double.pi * pow(radius, 2.0) + 2 * Double.pi * radius * height
}

/// finds the surface area of a sphere
/// - Parameter radius: straight distance from the center of the sphere to the surface
/// - Returns: surface area of the sphere
func surfaceAreaOfSphere (radius: Double) -> Double {
    return 4.0 * Double.pi * pow(radius, 2.0)
}

func surfaceAreaOfCone (radius: Double, sideLength: Double)-> Double {
    return Double.pi * pow(radius, 2.0) + 2.0 * Double.pi * radius * sideLength
}

func surfaceAreaOfSquareBasedPyramid (baseLength: Double, sideLength: Double) -> Double {
    return pow(baseLength, 2.0) + 2.0 * baseLength * sideLength
}

func surfaceAreaOfRectangularPrism (width: Double, height: Double, length: Double) -> Double {
    return 2.0*width*height + 2.0*length*width + 2.0*length*height
}

func surfaceAreaOfTriangularPrism (triangleSideA: Double, triangleSideB: Double, triangleSideC: Double, height: Double, triangleLength: Double) -> Double{
    return triangleSideB*triangleLength + triangleSideA*height + triangleSideB*height + triangleSideC*height
}

/// Finds the area of a rectangle
/// - Parameter length: length of rectangle
/// - Parameter width: width of rectangle
/// - Returns: area of the rectangle
func areaOfRectangle(length: Double, width: Double) -> Double {
    
    return length * width
    
}

/// Finds the area of a circle
/// - Parameter radius: the straight line distance from the center of a circle to its outer edge
/// - Returns: area of the circle
func areaOfCircle(radius: Double) -> Double {
    return Double.pi * pow(radius, 2.0)
}

// MARK: Input
let givenLength = 10.0 //set to a double using "type inference"
let givenWidth: Double = 2.0 //set to double using "type annotation"


//MARK: Process
let area = areaOfRectangle(length: givenLength, width: givenWidth)


// MARK: Output
print ("The area is \(area) square units") //string interpolation

