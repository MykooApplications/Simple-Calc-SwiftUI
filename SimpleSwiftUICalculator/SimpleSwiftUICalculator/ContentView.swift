//
//  ContentView.swift
//  SimpleSwiftUICalculator
//
//  Created by Roshan Mykoo on 3/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                // add textview to display user input
                
                //Hstack of Vstacks of all the input buttons
                HStack {
                    //7 4 1 (+/-)
                    VStack {
                        Button(action: {
                            print("tapped on ___ button")
                        }, label: {
                            Text("7")
                        })
                        
                        Button(action: {
                            print("tapped on ___ button")
                        }, label: {
                            Text("4")
                        })
                        
                        Button(action: {
                            print("tapped on ___ button")
                        }, label: {
                            Text("1")
                        })
                        
                        Button(action: {
                            print("tapped on ___ button")
                        }, label: {
                            Text("(+/-)")
                        })
                    }
                    
                    //8 5 2 0
                    
                    //9 6 3 .
                    
                    // / * - +
                }
                
                // enter button
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
