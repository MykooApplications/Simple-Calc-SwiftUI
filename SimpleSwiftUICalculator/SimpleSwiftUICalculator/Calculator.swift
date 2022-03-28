//
//  Calculator.swift
//  SimpleSwiftUICalculator
//
//  Created by Roshan Mykoo on 3/28/22.
//

import Foundation

class Calculator {
    var numberDisplayed: Double = 0
    
    //var operation = 0
    
    var currentCalculation: Double = 0 //first number
    var currentInput: Double = 0       //last number
    
    
    public func add(currentCalculation first: Double, currentInput second: Double) {
        self.currentCalculation = first + second
    }
    
    public func subtract() {
        
    }
    
    public func multiply() {
        
    }
    
    public func divide() {
        
    }
    
    public func enterButtonPressed() {
        printCurrentCalculation()
    }
    
    
    func printCurrentCalculation() {
        print(currentCalculation)
    }
    
    
}
