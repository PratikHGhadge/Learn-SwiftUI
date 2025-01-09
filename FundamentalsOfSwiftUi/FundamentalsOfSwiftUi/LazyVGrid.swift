//
//  LazyVGrid.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 07/01/25.
//

import SwiftUI

struct LazyVGridView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(1...20, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green.opacity(0.3))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct LazyVGridScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridView()
    }
}
