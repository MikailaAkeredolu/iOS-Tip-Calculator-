//
//  WeSplitApp.swift
//  WeSplit
//
//  Created by mikaila Akeredolu on 5/9/25.
//

import SwiftUI

@main
struct WeSplitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}



/*
 
 DEMO INTRO CODE
 
 //property wrapper @State
 @State private var tapCount = 0
 @State private var name = ""
 let numberOfBedrroms = ["1 bedroom", "2 bedrooms", "3 bedrooms"]
 @State private var selectedNNumberOfBedrooms = "1 bedroom"
 
 
 var body: some View {
   
     
     NavigationStack{
     
     
             Form{
                 //2-way binding with $
                 TextField("Enter the property address", text: $name)
                 Text("Address is: \(name)")
                 
                 Section{
                     ForEach(numberOfBedrroms, id: \.self){ name in
                         Text(name)
                     }
                 }
                 
                 Section{
                     Picker("no of bedrooms", selection: $selectedNNumberOfBedrooms){
                         ForEach(numberOfBedrroms, id: \.self){
                             Text($0)
                         }
                     }
                 }
            
                 
             }
             //Add title to the form not the navStack
             .navigationTitle("Swift UI")
             .navigationBarTitleDisplayMode(.inline)
         
         
     }
     
     Button("Tap Me"){
          tapCount += 1     //action - increment count variable
     }
         .padding(20)
         .foregroundStyle(Color.yellow)
         .background(RoundedRectangle(cornerRadius: 20))
     
     Text("You tapped me \(tapCount) times")
 
 
 
 
 
 */
