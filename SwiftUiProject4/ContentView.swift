//
//  ContentView.swift
//  SwiftUiProject4
//
//  Created by Abdul Adhil on 20/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text(Date.now,format: .dateTime.hour().minute())
        
        Text(Date.now,format: .dateTime.day().month().year())
        
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func exampleDate(){
        //this will work but in case of leap year timing some time day light more and we get 24 or 25 hours in this scenario it won't work
        let now = Date.now
        let tomorrow = Date.now.addingTimeInterval(86400) // 1 day in seconds
        let range = now...tomorrow
        
        
        //swift ui gives us a sensible built-in date type for working with dates
        
        //give me 8:00AM regardless of what day is today
        
        //DateComponent - we can read and write specific part of date
     // type 1
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
        
        //date from actually returns otional date
//        let date = Calendar.current.date(from: components) ?? .now
      
        //type 2
        // this will give specific hour or minutes the above method will give hour or minute but it will give us date if we want specific we need to use below type
        let components = Calendar.current.dateComponents([.hour,.minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
    }
    
    
}

#Preview {
    ContentView()
}
