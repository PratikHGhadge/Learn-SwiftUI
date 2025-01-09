//
//  LazyHGrid.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 07/01/25.
//

import SwiftUI

struct LazyHGridView: View {
    let rows = [GridItem(.fixed(50)), GridItem(.fixed(50)), GridItem(.fixed(50))]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 20) {
                ForEach(1...20, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(width: 100, height: 50)
                        .background(Color.orange.opacity(0.3))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct LazyHGridScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridView()
    }
}
