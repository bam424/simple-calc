//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 4/4/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import Foundation

print("Enter \"calc\" for operations");
print("Enter \"count\" to count the number of inputs");
print("Enter \"avg\"  to find the average of the inputted numbers");
print("Enter \"fact\" to calculate a factorial");

let option = readLine(strippingNewline: true)!;

switch option {
case "calc":
    print("Enter an expression separated by returns:");
    let firstNum = UInt.init(readLine(strippingNewline: true)!)!;
    let operation = readLine(strippingNewline: true)!;
    let secondNum = UInt.init(readLine(strippingNewline: true)!)!;
    switch operation {
    case "+":
        print(firstNum + secondNum);
    case "-":
        print(firstNum - secondNum);
    case "*":
        print(firstNum * secondNum);
    case "/":
        print(firstNum / secondNum);
    case "%":
        print(firstNum % secondNum);
    default:
        print("Invalid operation");
    }
case "count":
    print("Enter any amount of numbers seperated by spaces and hit return to count the amount of inputted numbers.");
    let numbers = readLine(strippingNewline: true)!;
    let countOfNumbers = numbers.characters.split{$0 == " "}.map(String.init);
    print(countOfNumbers.count);
case "avg":
    print("Enter any amount of numbers seperated by spaces and hit return to calculate the average of the numbers.");
    let numbers = readLine(strippingNewline: true)!;
    let countOfNumbers = numbers.characters.split{$0 == " "}.map(String.init);
    var total = 0;
    for i in 0...countOfNumbers.count - 1 {
        total += Int(UInt.init(countOfNumbers[i])!);
    }
    var avg = total / countOfNumbers.count;
    print("Average: \(avg)");
case "fact":
    print("Find the factorial of a number:");
    let num = UInt.init(readLine(strippingNewline: true)!)!;
    let fact = Int(num);
    var ans = 1;
    for integer in 1...fact {
        ans = ans * integer;
    }
    print("Factorial: \(ans)");
default:
    print("Invalid Input");
}
