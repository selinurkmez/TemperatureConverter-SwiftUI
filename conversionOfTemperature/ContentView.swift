//
//  ContentView.swift
//  conversionOfTemperature
//
//  Created by macbook on 3.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var celcius = "0"
    
    var fahrenheit: String {
        if let celsiusValue = Double(celcius) {
            let fahrenheitValue = (celsiusValue * 9/5) + 32
            return String(format: "%.2f", fahrenheitValue)
        } else {
            return "Geçersiz giriş"
        }
    }
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            HStack {
                TextField("Celcius:", text: $celcius)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Fahrenheit: \(fahrenheit)")
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

