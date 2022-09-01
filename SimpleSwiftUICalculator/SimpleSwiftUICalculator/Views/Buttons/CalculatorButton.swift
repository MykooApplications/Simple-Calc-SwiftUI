//
//  CalculatorButton.swift
//  SimpleSwiftUICalculator
//
//  Created by Roshan Mykoo on 3/17/22.
//

import SwiftUI

struct NumberButton: View {
    var title : String
    var body: some View {
        Text(title)
            .foregroundColor(Color.numberTextColor)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.numberBackgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))

    }
    init(btnTitle title: String){
        self.title = title
    }
}

struct OperatorButton: View {
    var title: String
    var body: some View {
        Text(title)
            .foregroundColor(Color.operatorTextColor)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.operatorBackgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct ClearButton: View {
    var body: some View {
        Text("AC")
            .foregroundColor(Color.clearTextColor)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.clearBackroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct EnterButton: View {
    var body: some View {
        Text("=")
            .foregroundColor(Color.enterTextColor)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.enterBackrgoundColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

//struct CalculatorButton: View {
//
//    let buttonTitle: String
//    let action: () -> Void
//    //var buttonColor: String // = Color(red: 48/255, green: 105/255, blue: 240/255)
//    //var textColor: String //  = Color(red: 2/255, green: 5/255, blue: 240/255)
//
//    let black = Color(red: 0/255, green: 0/255, blue: 0/255)
//    let white = Color(red: 255/255, green: 255/255, blue: 255/255)
//    let gray = Color(red: 171/255, green: 171/255, blue: 171/255)
//
//    let buttonColor = Color.buttonColor
//
//    var chosenColorString : String
//    //var chosenColor = Color(red: 255/255, green: 255/255, blue: 255/255)
//    var chosenTextColor = Color(red: 0/255, green: 0/255, blue: 0/255)
//
//    private var chosenColor: Color {
//        switch chosenColorString {
//        case "orange":
//            return orange
//        case "gray":
//            return gray
//        default:
//            return gray
//        }
//    }
//
//    var body: some View {
//        Button(action: {
//            print("tapped on \(buttonText) button")
//        }, label: {
//            Text(buttonText)
//        })
//            .background()
//            .foregroundColor()
//    }
//
//    var body: some View {
//        Text("placeholder")
//    }
//}

//struct CalculatorButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CalculatorButton(buttonTitle: "~", action: Calculator.add,  chosenColorString: "orange")
//    }
//}
