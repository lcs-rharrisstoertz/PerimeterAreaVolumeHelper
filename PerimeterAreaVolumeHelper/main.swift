//
//  main.swift
//  PerimeterAreaVolumeHelper
//
//  Created by Harris-Stoertz, Rowan on 2021-01-29.
//

import Foundation

// MARK: Functions

func surfaceAreaOfCylinder(radius: Double, height: Double) -> Double {
    return 2.0 * Double.pi * pow(radius, 2.0)
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

