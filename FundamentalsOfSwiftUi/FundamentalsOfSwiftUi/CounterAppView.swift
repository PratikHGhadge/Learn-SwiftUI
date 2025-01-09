//
//  CounterAppView.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 07/01/25.
//

import SwiftUI

struct CounterView: View {
    @State private var count = 0 // Local state

    var body: some View {
        VStack(spacing: 20) {
            Text("Count: \(count)")
                .font(.largeTitle)

            Button("Increment") {
                count += 1 // Update state
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

struct CounterView_Preview: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
