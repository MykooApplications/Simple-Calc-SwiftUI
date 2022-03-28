//
//  ContentView.swift
//  SimpleSwiftUICalculator
//
//  Created by Roshan Mykoo on 3/17/22.
//

import SwiftUI


struct ContentView: View {
    @State var calcDisplayText: String = "0"
    @State var calcDisplayNumber: Double = 0 //first
    
    @State var secondNumberText: String = "0"
    @State var secondNumber: Double = 0      //second
    
    @State var currentOperator : String = ""
    
    //var fistNumber: Double = 0
    //var lastNumber: Double = 0
    
    @State var operatorActive: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                // add textview to display user input
                HStack {
                    Text(calcDisplayText)
                        .font(.largeTitle)
                        .frame(height: 100, alignment: .trailing)
                        .frame(minWidth: 0, maxWidth: .infinity)
                }
                                
                VStack {
                    Button(action: {
                        print("tapped on AC button")
                        allClear()
                    }, label: {
                        ClearButton()
                    })
                    
                    //Hstack of VStacks of all the input buttons
                    HStack {
                        //7 4 1 (+/-)
                        VStack {
                            //7 Number
                            Button(action: {
                                print("tapped on 7 button")
                                if operatorActive {
                                    // append to "second number"
                                    if secondNumberText == "0" {
                                        secondNumberText = "7"
                                        secondNumber = Double(secondNumberText) ?? 0
                                        calcDisplayText = secondNumberText
                                    } else {
                                        secondNumberText.append("7")
                                        secondNumber = Double(secondNumberText) ?? 0
                                        calcDisplayText = secondNumberText
                                    }
                                } else {
                                    //add to "first number"
                                    if calcDisplayText == "0" {
                                        calcDisplayText = "7"
                                        calcDisplayNumber = 7
                                    } else {
                                        calcDisplayText.append("7")
                                        calcDisplayNumber = Double(calcDisplayText) ?? 0
                                    }
                                }
                            }, label: {
                                NumberButton(btnTitle: "7")
                            })
                            
                            //4 Number
                            Button(action: {
                                print("tapped on 4 button")
                                if operatorActive {
                                    if secondNumberText == "0" {
                                        secondNumberText = "4"
                                        secondNumber = Double(secondNumberText) ?? 0
                                        calcDisplayText = secondNumberText
                                    } else {
                                        secondNumberText.append("4")
                                        secondNumber = Double(secondNumberText) ?? 0
                                        calcDisplayText = secondNumberText
                                    }
                                } else {
                                    if calcDisplayText == "0" {
                                        calcDisplayText = "4"
                                        calcDisplayNumber = 4
                                    } else {
                                        calcDisplayText.append("4")
                                        calcDisplayNumber = Double(calcDisplayText) ?? 0 //figure out error handle
                                    }
                                }
                            }, label: {
                                NumberButton(btnTitle: "4")
                            })
                            
                            //1 Number
                            Button(action: {
                                if operatorActive {
                                    if secondNumberText == "0" {
                                        secondNumberText = "1"
                                        secondNumber = Double(secondNumberText) ?? 0
                                        calcDisplayText = secondNumberText
                                    } else {
                                        secondNumberText.append("1")
                                        secondNumber = Double(secondNumberText) ?? 0
                                        calcDisplayText = secondNumberText
                                    }
                                } else {
                                    if calcDisplayText == "0" {
                                        calcDisplayText = "1"
                                        calcDisplayNumber = 4
                                    } else {
                                        calcDisplayText.append("1")
                                        calcDisplayNumber = Double(calcDisplayText) ?? 0 //figure out error handle
                                    }
                                }
                            }, label: {
                                NumberButton(btnTitle: "1")
                            })
                            
                            //Positive/Negative Input Number
                            Button(action: {
                                print("tapped on (+/-) Positive negative button")
                            }, label: {
                                NumberButton(btnTitle: "(+/-)")
                            })
                        }
                        
                        //8 5 2 0
                        VStack {
                            //8 Number
                            Button(action: {
                                print("Tapped on 8 button")
                            }, label: {
                                NumberButton(btnTitle: "8")
                            })
                            
                            //5 Number
                            Button(action: {
                                print("Tapped on 5 Button")
                            }, label: {
                                NumberButton(btnTitle: "5")
                            })
                            
                            //2 Number
                            Button(action: {
                                print("Tapped on 2 button")
                            }, label: {
                                NumberButton(btnTitle: "2")
                            })
                            
                            //0 Number
                            Button(action: {
                                print("Tapped on 0 button")
                            }, label: {
                                NumberButton(btnTitle: "0")
                            })
                        }
                        
                        //9 6 3 .
                        VStack {
                            //9 Number
                            Button(action: {
                                print("tapped on 9 button")
                            }, label: {
                                NumberButton(btnTitle: "9")
                            })
                            
                            //6 Number
                            Button(action: {
                                print("tapped on 6  button")
                            }, label: {
                                NumberButton(btnTitle: "6")
                            })
                            
                            //3 Number
                            Button(action: {
                                print("tapped on 3 button")
                            }, label: {
                                NumberButton(btnTitle: "3")
                            })
                            
                            //. Decimal Place
                            Button(action: {
                                print("tapped on . button")
                            }, label: {
                                NumberButton(btnTitle: ".")
                            })
                        }
                        
                        // / * - +
                        VStack {
                            //Division Operator
                            Button(action: {
                                print("tappepd on / button")
                                divide()
                            }, label: {
                                OperatorButton(title: "/")
                            })
                            
                            //Multiplacation Operator
                            Button(action: {
                                print("tapped on x button")
                                multiply()
                            }, label: {
                                OperatorButton(title: "x")
                            })
                            
                            //Subtraction Operator
                            Button(action: {
                                print("tapped on - Button")
                                subtract()
                            }, label: {
                                OperatorButton(title: "-")
                            })
                            
                            //Addition Operator
                            Button(action: {
                                print("tapped on + button")
                                //Calculator.add()
                                add()
                            }, label: {
                                OperatorButton(title: "+")
                            })
                        }
                    }
                    
                    // enter button
                    Button(action: {
                        print("tapped on = button")
                        //Calculator.enterButtonPressed()
                        equals()
                    }, label: {
                        EnterButton()
                    })
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 500)
                .frame(alignment: .bottom)
                .padding()
            }
        }
    }
    
    
    func add() {
        if calcDisplayText != "" {
            operatorActive = true
            calcDisplayText = ""
            currentOperator = "+"
        } else {
            return
        }
    }
    
    func subtract() {
        if calcDisplayText != "" {
            operatorActive = true
            calcDisplayText = ""
            currentOperator = "-"
        } else {
            //error
            return
        }
    }
    
    func multiply() {
        if calcDisplayText != "" {
            operatorActive = true
            calcDisplayText = ""
            currentOperator = "x"
        } else {
            //error
            return
        }
    }
    
    func divide() {
        if calcDisplayText != "" {
            operatorActive = true
            calcDisplayText = ""
            currentOperator = "/"
        } else {
            //error
            return
        }
    }
    
    func equals() {
        switch currentOperator {
        case "+":
            let sum = calcDisplayNumber + secondNumber
            print("\(calcDisplayNumber) + \(secondNumber) = \(sum)")
            calcDisplayNumber = sum
            calcDisplayText = "\(calcDisplayNumber)"
            secondNumber = 0
        case "-":
            let difference = calcDisplayNumber - secondNumber
            print("\(calcDisplayNumber) - \(secondNumber) = \(difference)")
            calcDisplayNumber = difference
            calcDisplayText = "\(calcDisplayNumber)"
            secondNumber = 0
        case "x":
            let product = calcDisplayNumber * secondNumber
            print("\(calcDisplayNumber) x \(secondNumber) = \(product)")
            calcDisplayNumber = product
            calcDisplayText = "\(calcDisplayNumber)"
            secondNumber = 0
        case "/":
            let quotient = calcDisplayNumber / secondNumber
            print("\(calcDisplayNumber) / \(secondNumber) = \(quotient)")
            calcDisplayNumber = quotient
            calcDisplayText = "\(calcDisplayNumber)"
            secondNumber = 0
        default:
            print("There was an error, infrom the user")
        }
    }
    
    func allClear() {
        currentOperator = ""
        calcDisplayText = "0"
        calcDisplayNumber = 0
        secondNumber = 0
        secondNumberText = "0"
        operatorActive = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
