//
//  AlignmentGuide.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 07/01/25.
//

import SwiftUI

struct AlignmentGuideView: View {
    
    var body: some View {
        ZStack{
            Text("bottomTrailing")
                .frame(width: 300, height: 300, alignment: .bottomTrailing)
                .foregroundColor(.red)
            Text("bottom")
                .frame(width: 300, height: 300, alignment: .bottom)
                .foregroundColor(.green)
            Text("bottom")
                .frame(width: 300, height: 300, alignment: .bottom)
                .foregroundColor(.green)
            Text("bottomLeading")
                .frame(width: 300, height: 300, alignment: .bottomLeading)
                .foregroundColor(.yellow)
            Text("topTrailing")
                .frame(width: 300, height: 300, alignment: .topTrailing)
                .foregroundColor(.red)
            Text("bottom")
                .frame(width: 300, height: 300, alignment: .top)
                .foregroundColor(.green)
            Text("topLeading")
                .frame(width: 300, height: 300, alignment: .topLeading)
                .foregroundColor(.yellow)
            Text("center")
                .frame(width: 300, height: 300, alignment: .center)
                .foregroundColor(.yellow)
        }
        
        HStack(alignment: .lastTextBaseline) {
            Text("Live")
                .font(.caption)
            Text("long")
            Text("and")
                .font(.title)
            Text("prosper")
                .font(.largeTitle)
        }
        
        VStack(alignment: .trailing) {
            Text("Hello, world!")
            Text("This is a longer line of text")
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
        
        Text("Offset Example")
            .offset(x: 50, y: 40)
            .background(Color.pink)
    }
}


struct AlignmentGuideView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideView()
    }
}
