//
//  ContentView.swift
//  FirstiOSApp
//
//  Created by Sam Calthrop on 19/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    NavigationLink("Item 1") {
                        ConditionalCircle()
                    } .navigationTitle("List")
                }
            }
        }
    }
}

struct ConditionalCircle: View {
    @State var isOn = false
    
    var body: some View {
        VStack {
            Circle()
                .frame(maxHeight: 200)
                .blur(radius: isOn ? 20 : 50)
                .shadow(color: isOn ? .pink : .mint, radius: isOn ? 3 : 3)
                .scaleEffect(isOn ? 1.8 : 1.0)
                .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 2), value: isOn)
            
            Text("Press It!")
                .bold()
                .font(.title)
            
            Button("Press Me!") {
                isOn.toggle()
            }
                .italic()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
