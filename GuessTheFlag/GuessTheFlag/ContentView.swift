//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Michele Lorenzo Miranda on 23/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        VStack {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)

            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            Image(systemName: "pencil")
            Button("Edit", systemImage: "pencil") {
                print("Edit button was tapped")
            }
            Button {
                print("Edit button was tapped")
            } label: {
                Image(systemName: "pencil")
            }
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.blue)
                    .background(.red)
            }
        }
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
    }
    
    func executeDelete() {
        print("Now deleting…")
    }
}

#Preview {
    ContentView()
}
