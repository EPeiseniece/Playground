import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var number1: Float = 2.31
var number2: Float = 1.32
var numberD:Double = Double(number1) + Double(number2)
print (numberD)
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
var numberOne = 3
var numberTwo = 1
let result = numberOne / numberTwo
let remainder = numberOne % numberTwo
print ("When dividing \(numberOne) by \(numberTwo), the result is \(result),  the remainder is \(remainder)")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty = 10
var price: Int
 if qty >= 5 && qty < 10 {
    price = 900
}else if qty >= 10 {
    price = 850
}else {
    price = 1000}
var totalSum = qty * price
print ( "new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
 var userInputAge = "33a"
 var convertToInt = Int(userInputAge)
 if convertToInt == nil {
    print("userInputAge cannot be converted to Int")
 }else { print(convertToInt as Any)
 }
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
 let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
let calendar = Calendar.current
let currentDate = Date()
let birthDate = formatter.date(from: "21.06.1997")
let birthDay = calendar.component(.day, from: birthDate!)
let birthMonth = calendar.component(.month, from: birthDate!)
let birthYear = calendar.component(.year, from: birthDate!)
let currentDay = calendar.component(.day, from: currentDate)
let currentMonth = calendar.component(.month, from: currentDate)
let currentYear = calendar.component(.year, from: currentDate)
let numberOfMonthInOneYear = 12.0
let daysInYear = 365.25
let numberOfDaysInOneMonth = (daysInYear / numberOfMonthInOneYear)
var totalYearsFromBirth = Float(currentYear) - Float(birthYear)
if currentMonth <= birthMonth {
    if birthDay < currentDay {
totalYearsFromBirth = totalYearsFromBirth - 1
    }
}else {
}
var totalMonthFromBirth = Double(totalYearsFromBirth) * Double(numberOfMonthInOneYear)
var monthDifference = currentMonth - birthMonth
if currentMonth > birthMonth {
     if birthDay <= currentDay {
    totalMonthFromBirth = Double(totalYearsFromBirth) * Double(numberOfMonthInOneYear) + Double(monthDifference)
     }else {
         totalMonthFromBirth = Double(totalYearsFromBirth) * Double(numberOfMonthInOneYear) + Double(monthDifference) - 1
     }
}else if currentMonth == birthMonth {
    if currentDay < birthDay {
        totalMonthFromBirth = totalMonthFromBirth + 11
    }else {
    }
} else {
    totalMonthFromBirth = Double(totalMonthFromBirth) + (Double(numberOfMonthInOneYear) - Double(birthMonth)) + Double(currentMonth)
}
var totalDaysFromBirth: Double = totalMonthFromBirth * numberOfDaysInOneMonth
if currentDay > birthDay {
    totalDaysFromBirth = Double(totalDaysFromBirth) + Double(currentDay) - Double(birthDay)
} else {
    totalDaysFromBirth = totalDaysFromBirth + (Double(numberOfDaysInOneMonth) - Double(birthDay)) + Double(currentDay)
}
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */var quarter: String
 switch birthMonth {
     case 1...3:
     quarter = "first"
     case 4...6:
     quarter = "second"
     case 7...9:
     quarter = "third"
     default:
     quarter = "fourth"
 }
 print("I was born in the \(quarter) quarter")
