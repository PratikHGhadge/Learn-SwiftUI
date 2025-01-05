//
//  ContentView.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 01/01/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("username") var username: String = "Pratik"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, \(username)!")
                .onAppear {
                    print("Image is appeard")
                }
                .onDisappear {
                    print("Image is desappeard")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
