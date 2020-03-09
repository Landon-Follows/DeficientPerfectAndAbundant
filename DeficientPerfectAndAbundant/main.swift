//
//  main.swift
//  DeficientPerfectAndAbundant
//
//  Created by Yu, Boning on 2020-03-09.
//  Copyright © 2020 Wellesley Yu. All rights reserved.
//

import Foundation

var number = 0
var sumOfFactors = 0

// Loop until valid input provided by user
while true {
    
    // Ask for input
    print("Please enter a positive integer between 1 and 32500 to be analyzed.")
    guard let inputGiven = readLine() else {
        
        // No input given, return to top of loop and ask again
        continue
    }
    
    //The input given must not contain a dot
    guard !inputGiven.contains(".") else {
        continue
    }
    // Attempt to make input into an integer
    guard let integerGiven = Int(inputGiven) else {
        
        // Could not make input into an integer, so return to top and ask again
        continue

    }
    
    // Check that integer is in desired range
    // REMEMBER: Guard statement conditions describe what we WANT
    guard integerGiven >= 1, integerGiven <= 32500  else {
        
        // Integer not in desired range, return to top and ask again
        continue
        
    }
    
    // If we've made it here, the input is valid
    number = integerGiven
    
    // Stop looping
    break
    
}

for factor in 1...number {
    if number % factor == 0 {
       sumOfFactors += factor
    }
}




