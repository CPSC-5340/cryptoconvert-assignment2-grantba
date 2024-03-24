//
//  ContentView.swift
//  Assignment2
//
//  Created by Blaire Grant on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: Converter()) {
                        Text("World Currency Exchange")
                    }
                    NavigationLink(destination: Converter()) {
                        Text("Crypto Exchange")
                    }
                }
                .navigationTitle("Conversion App")
                .navigationBarTitleDisplayMode(.large)
                .listStyle(.grouped)
            }
        }
    }
}

#Preview {
    ContentView()
}
