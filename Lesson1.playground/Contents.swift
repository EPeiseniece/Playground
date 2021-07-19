import UIKit

import Foundation
/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/
let firstString : String = "I'm learing"
let secondString : String = "swift"
print ("\(firstString) \(secondString) !!!")
/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge = 24
/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
var myAgeInTenYears:Int = myAge + 10
/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYear  = 365.25
/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
var daysPassed : Float = Float(myAgeInTenYears) * Float(daysInYear)
/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/
print("My age is \(myAge) years. In 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(daysPassed) days . ")
/*
Exercise 3.
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/
let lengthAC:Double = 8
let lengthCB: Double = 6
var squareAC = lengthAC * lengthAC
var squareCB = lengthCB * lengthCB
var double = squareAC + squareCB
var hypothenuse = sqrt(double)
print("The length of hypothenuse of triangle AB is \(hypothenuse) .")
var areaAB = (lengthAC * lengthCB) / 2
print("The area of the triangle is \(areaAB)")
var preimiter = lengthAC + lengthCB + hypothenuse
print("The perimiter of the triangle is \(preimiter)")
