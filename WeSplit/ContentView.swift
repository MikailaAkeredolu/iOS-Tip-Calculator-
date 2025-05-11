//
//  ContentView.swift
//  WeSplit
//
//  Created by mikaila Akeredolu on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    
    //state for inputs
    @State private var amount = 0.0
    @State private var numberOfPeople = 1
    @State private var tipPercentage = 18
    
    @FocusState private var amountIsFocused: Bool
    
    //Choice of tips
    let tipChoices: [Int] = [10, 15, 18, 20, 25]
    
    // compute variable or computed property
    //A computed property (or "computed variable") is a variable that doesn't store a value directly—instead, it calculates its value every time you access it.
    
    var totalPerPerson: Double {
        
        let peopleCount = numberOfPeople
        print("peopleCount \(peopleCount) \n ===========")
        
        // Convert selected tip percentage from Int to Double for calculation and cast to a double
        let tipSelection = Double(tipPercentage)
        print("tipSelection \(tipSelection) \n ===========")
        
//        let tipValue = amount / 100 * tipSelection
        let tipValue = tipSelection / 100
        print("tipValue\(tipValue) \n ===========")
        
        let tipAmount = amount * tipValue
        print("tip amount \(tipAmount) \n ===========")
        
        // Calculate the total amount including the tip
        let grandTotal  = amount + tipAmount
        print("grandTotal\(grandTotal) \n ===========")
        
        // Divide the total amount by number of people to get per-person cost by casting the int to a double
        let amountPerPerson = grandTotal / Double(peopleCount)
        print("amountPerPerson \(amountPerPerson) \n ===========")
        return amountPerPerson
        
    }

    
    var body: some View {
        
        NavigationStack{
            
        
        Form {
            
            Section(header: Text("Amount")){
                TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused) // when textfield is focused
                
                Picker("Number of People", selection: $numberOfPeople) {
                    //loop over and make each a text view
                    ForEach(0..<100) { count in
                        Text("\(count) people")
                    }
                }
               // .pickerStyle(.navigationLink)
             // .pickerStyle(SegmentedPickerStyle())
                
            }
            
            Section(header: Text("Tip Percentage")){
                
                Picker("Tip Percentage", selection: $tipPercentage) {
                    ForEach(tipChoices, id: \.self) {
                        Text($0, format: .percent)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
          
            
            Section(header: Text("Total Per Person")){
                //display of input text
                Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? " USD"))
            }
            
        }.navigationTitle("WeSplit Calculator")
         .navigationBarTitleDisplayMode(.inline)
         .toolbar{
             if amountIsFocused {
                 Button("Done"){
                     amountIsFocused = false
                 }
             }
         }
   
        
    }
        
        
    }
}

#Preview {
    ContentView()
}
