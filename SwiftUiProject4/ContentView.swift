//
//  ContentView.swift
//  SwiftUiProject4
//
//  Created by Abdul Adhil on 20/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date.now
    
    var body: some View {
       
        //DatePicker("Please enter your date",selection: $wakeUp)
        
        // this date picker alway make a space for lable if we remove lable screen readers and voice over have no idea what this picker will do
        
        //DatePicker("",selection: $wakeUp)
        
        //To fix the problem hide the lable
        DatePicker("Please enter your date",selection: $wakeUp)
            .labelsHidden()
        
        // we can modify the display component
        DatePicker("Please enter your date",selection: $wakeUp,displayedComponents: .hourAndMinute)
            .labelsHidden()
        
        // one side range in swift date, it will allow us to pick date from future not from past
        DatePicker("Please enter your date",selection: $wakeUp,in: Date.now...)
            .labelsHidden()
        
    }
    //We can set range in Date also
    func exampleDates(){
        let tomorrow = Date.now.addingTimeInterval(86400) //86400 one day in seconds
        let range =  Date.now...tomorrow
    }
}

#Preview {
    ContentView()
}
