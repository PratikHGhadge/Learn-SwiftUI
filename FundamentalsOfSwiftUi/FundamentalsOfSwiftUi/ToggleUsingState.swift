//
//  ToggleUsingState.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 08/01/25.
//


import SwiftUI

struct ToggleUsingStateView: View {
    @State private var isOn: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Toggle(isOn: $isOn) {
                Text(isOn ? "ON" : "OFF")
                    .foregroundColor(.white)
            }.fixedSize()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(isOn ? .yellow: .black)
    }
}

struct ToggleUsingStateView_Preview: PreviewProvider {
    static var previews: some View {
        ToggleUsingStateView()
    }
}

