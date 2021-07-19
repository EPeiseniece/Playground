import UIKit

/*Lesson 3
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
let startingDeposit:Double = 500000
var deposit: Double = startingDeposit
let rate = 0.05 //5% interest per annum
let period = 5
for _ in 1...5{
  deposit = deposit + deposit * rate
}
var profit = deposit - startingDeposit
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
var numberArray = [2, 4, 3, 2, 6, 1, 9, 6]
print("My even numbers are:")
for n in numberArray{
  if n % 2 == 0 {
    print(n)
  }
}
/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
var counter = 0
for x  in 1...100{
  let randomNumber = Int.random(in:1...100)
  if randomNumber == 5 {
    print ("Number 5 will be after \(counter) shuffles")
    break
  }else {
    counter += 1
  }
}
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night bug slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
let day = 2
let night = -1
var height = 0
var numberOfDays = 0
while height <= 10 {
  height = day + night
  numberOfDays += 1
}
print("bug will spend \(numberOfDays) to reach top of the post")
