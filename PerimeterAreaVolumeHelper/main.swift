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
///   - radius: the straight line distance from the center of one of the cylinder's circular bases to the edge of the base
///   - height: the height of the cylinder
/// - Returns: surface area of the cylinder
func surfaceAreaOfCylinder(radius: Double, height: Double) -> Double {
    return 2.0 * Double.pi * pow(radius, 2.0) + 2 * Double.pi * radius * height
}
/// finds the surface area of a sphere
/// - Parameter radius: the straight line distance from the center of the sphere to the surface
/// - Returns: surface area of the sphere
func surfaceAreaOfSphere (radius: Double) -> Double {
    return 4.0 * Double.pi * pow(radius, 2.0)
}

/// finds the surface area of a cone
/// - Parameters:
///   - radius: the straight line distance from the center of the circular base to the edge of the base
///   - sideLength: the straight line distance from the edge of the base to the tip of the cone
/// - Returns: surface area of the cone
func surfaceAreaOfCone (radius: Double, sideLength: Double)-> Double {
    return Double.pi * pow(radius, 2.0) + 2.0 * Double.pi * radius * sideLength
}

/// finds the surface area of a square-based pyramid
/// - Parameters:
///   - baseLength: the side-length of the pyramid base
///   - sideLength: the straight line distance from the center of the one the edges of the base to the top of the pyramid
/// - Returns: surface area of the square-based pyramid
func surfaceAreaOfSquareBasedPyramid (baseLength: Double, sideLength: Double) -> Double {
    return pow(baseLength, 2.0) + 2.0 * baseLength * sideLength
}

/// finds the surface area of a rectangular prism
/// - Parameters:
///   - width: width of the prism
///   - height: height of the prism
///   - length: length of the prism
/// - Returns: surface area of the rectangular prism
func surfaceAreaOfRectangularPrism (width: Double, height: Double, length: Double) -> Double {
    return 2.0*width*height + 2.0*length*width + 2.0*length*height
}

/// finds the surface area of a triangular prism
/// - Parameters:
///   - triangleSideA: side length of one side of the triangle base
///   - triangleSideB: side length of another side of the triangle base
///   - triangleSideC: side length of yet another side of the triangle base
///   - height: height of the prism
///   - triangleLength: the length of a line running perpendicular to one of the sides of the triangle base to the opposite vertex of the triangle
/// - Returns: surface area of the triangular prism
func surfaceAreaOfTriangularPrism (triangleSideA: Double, triangleSideB: Double, triangleSideC: Double, height: Double, triangleLength: Double) -> Double{
    return triangleSideB*triangleLength + triangleSideA*height + triangleSideB*height + triangleSideC*height
}
// MARK: Input
//setting up variables
var surfaceArea = 0.0
print("Surface Area Calculator")
print("=======================")//adds title
print("What shape do you want to calculate the surface area of?")//print menu of options
print("1: Cylinder")
print("2: Sphere")
print("3: Cone")
print("4: Square-based pyramid")
print("5: Rectangular prism")
print("6: Triangular Prism")
var shape = String.collectInput(withPrompt: "Enter your choice (1/2/3/4/5/6): ", acceptableValues: ["1", "2", "3", "4", "5", "6"])

//MARK: Process and Output

switch shape {//takes the input from earlier and calculates the SA of the appropriate shape
//all the cases are basically the same, just different parameters and math
case "1":
    print("Enter the radius of the cylinder: ", terminator: "")//prints a thing telling the user to enter a value for the radius of the cylinder
    let radius = Double(readLine()!)//user enters a value
    print("Enter the height of the cylinder: ", terminator: "")
    let height = Double(readLine()!)
    surfaceArea = surfaceAreaOfCylinder(radius: radius!, height: height!)//the surface area is calculates
    print("The cylinder has a surface area of \(surfaceArea) units squared")//the program tells the user what the surface area is
case "2":
    print("Enter the radius of the sphere: ", terminator: "")
    let radius = Double(readLine()!)
    surfaceArea = surfaceAreaOfSphere(radius: radius!)
    print("The sphere has a surface area of \(surfaceArea) units squared")
case "3":
    print("Enter the radius of the cone: ", terminator: "")
    let radius = Double(readLine()!)
    print("Enter the side-length of the cone: ", terminator: "")
    let sideLength = Double(readLine()!)
    surfaceArea = surfaceAreaOfCone(radius: radius!, sideLength: sideLength!)
    print("The cone has a surface area of \(surfaceArea) units squared")
case "4":
    print("Enter the base length of the pyramid: ", terminator: "")
    let baseLength = Double(readLine()!)
    print("Enter the side length of the pyramid: ", terminator: "")
    let sideLength = Double(readLine()!)
    surfaceArea = surfaceAreaOfSquareBasedPyramid(baseLength: baseLength!, sideLength: sideLength!)
    print("The square-based pyramid has a surface area of \(surfaceArea) units squared")
case "5":
    print("Enter the width of the rectangular prism: ", terminator: "")
    let width = Double(readLine()!)
    print("Enter the height of the rectangular prism: ", terminator: "")
    let height = Double(readLine()!)
    print("Enter the length of the rectangular prism: ", terminator: "")
    let length = Double(readLine()!)
    surfaceArea = surfaceAreaOfRectangularPrism(width: width!, height: height!, length: length!)
    print("The rectangular prism has a surface area of \(surfaceArea) units squared")
case "6":
    print("Enter the side length of one side of the prism base: ", terminator: "")
    let triangleSideA = Double(readLine()!)
    print("Enter the side length of another side of the prism base: ", terminator: "")
    let triangleSideB = Double(readLine()!)
    print("Enter the side length of another side of the prism base: ", terminator: "")
    let triangleSideC = Double(readLine()!)
    print("Enter the height of the prism: ", terminator: "")
    let height = Double(readLine()!)
    print("Enter the length of the line running perpendicular to one side of the triangle base to the opposite vertex: ", terminator: "")
    let triangleLength = Double(readLine()!)
    surfaceArea = surfaceAreaOfTriangularPrism(triangleSideA: triangleSideA!, triangleSideB: triangleSideB!, triangleSideC: triangleSideC!, height: height!, triangleLength: triangleLength!)
    print("The triangular prism has a surface area of \(surfaceArea) units squared")
default:
    break
}
