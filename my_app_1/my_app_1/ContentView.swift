//
//  ContentView.swift
//  my_app_1
//
//  Created by Shardul Khandebharad on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProgressView(value:75,total: 100)
            HStack{
                VStack(alignment:.leading){
                    Text("Time elapsed")
                    Label("75", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Time remaining")
                    Label("25", systemImage: "hourglass.bottomhalf.fill")
                    
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("25 minutes")
            Circle()
                            .strokeBorder(lineWidth: 24)
            HStack{
                Text("Next")
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
        }
            .accessibilityLabel("Next speaker")
        
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
