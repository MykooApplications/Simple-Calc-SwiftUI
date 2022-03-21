//
//  CalculatorButton.swift
//  SimpleSwiftUICalculator
//
//  Created by Roshan Mykoo on 3/17/22.
//

import SwiftUI

struct CalculatorButton: View {
    let buttonText: String
    var buttonColor: String // = Color(red: 48/255, green: 105/255, blue: 240/255)
    //var textColor: String //  = Color(red: 2/255, green: 5/255, blue: 240/255)
    
    let black = Color(red: 0/255, green: 0/255, blue: 0/255)
    let white = Color(red: 255/255, green: 255/255, blue: 255/255)
    let gray = Color(red: 171/255, green: 171/255, blue: 171/255)
    
    let buttonColor = Color.buttonColor
    
    var chosenColorString : String
    //var chosenColor = Color(red: 255/255, green: 255/255, blue: 255/255)
    var chosenTextColor = Color(red: 0/255, green: 0/255, blue: 0/255)
  
    private var chosenColor: Color {
        switch chosenColorString {
        case "orange":
            return orange
        case "gray":
            return gray
        default:
            return gray
        }
    }
    
    
    
    
    
    var body: some View {
        Button(action: {
            print("tapped on \(buttonText) button")
        }, label: {
            Text(buttonText)
        })
            .background()
            .foregroundColor(<#T##color: Color?##Color?#>)
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(buttonText: "~", buttonColor: "orange", chosenColorString: "orange")
    }
}
