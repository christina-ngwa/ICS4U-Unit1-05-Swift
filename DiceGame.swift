import Foundation
// 
//  DiceGame.swift
//  ICS4U-Unit1-05-Swift
// 
//  Created by Christina on 26/02/20.
//  Copyright © Christina Ngwa. All rights reserved.
// 
//  This program checks if the user guesses the correct number from 1-6.
// 

// variables and constants
let randInt = Int.random(in: 1 ..< 7)
var guess:Int
var numOfGuesses:Int = 0

print("Welcome to the DiceRoll game.\n")

// input
while (true) {
    print("Enter your guess (1-6): ")
    // process
    if let guess = Int(readLine()!) {
        if (guess > 6 || guess < 1) {
            print("Please pick from 1-6.")
        } else {
            numOfGuesses += 1
            if (guess == randInt) {
                break
            }
        }
    } else {
        print("Invalid input. Please try again.")
    }
}
// output
print("You took \(numOfGuesses) tries to guess the correct answer of \(randInt).")