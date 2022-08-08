import UIKit

var name = "yaser"
var birthdayear = 2005

var currentyear = 2022
var age = currentyear - birthdayear


currentyear - birthdayear



print("Hello my name is \(name) and my age is \(age) ")


if age >= 14 && age <= 18 {
    print("نعم يمكنك المشاركة في الكويت تبرمج")
}

else {
    print("لايمكنك المشاركة في الكويت تبرمج")
}



var text = "8"
var number = 4
var doublNumb : Double

doublNumb = (Double(text) ?? 0) + Double(number)
