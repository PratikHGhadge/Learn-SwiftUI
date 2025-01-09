//
//  GeometryReader.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 07/01/25.
//


import SwiftUI

struct GeometryReaderView: View {
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 10) {
                Text("Top")
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.3)
                    .background(Color.red)
                
                Text("Bottom")
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.7)
                    .background(Color.blue)
            }
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
