//
//  HorizontalScrollView.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 07/01/25.
//
import SwiftUI

struct HorizontalScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 20) {
                ForEach(1...10, id: \.self) { index in
                    Text("Item \(index)")
                        .font(.headline)
                        .frame(width: 100, height: 100)
                        .background(Color.purple.opacity(0.3))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}


struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}
