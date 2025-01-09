//
//  VerticalScrollView.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 07/01/25.
//
import SwiftUI

struct VerticalScrollView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(1...20, id: \.self) { index in
                    Text("Item \(index)")
                        .font(.headline)
                        .padding(.horizontal, 150)
                        .padding(.vertical, 50)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}


struct VerticalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalScrollView()
    }
}
