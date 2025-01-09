//
//  HikeList.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 05/01/25.
//

import SwiftUI

struct HikeList: View {
    let hikes: [Hike] = [
        Hike(name: "hike 1", photo: "hike1", miles: 6),
        Hike(name: "hike 2", photo: "hike2", miles: 6),
        Hike(name: "hike 3", photo: "hike3", miles: 6),
        Hike(name: "hike 4", photo: "hike4", miles: 6)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) { hike in
                    Text(hike.name)
                }
        }
    }
}


struct HikeList_Previews: PreviewProvider {
    static var previews: some View {
        HikeList()
    }
}

struct HikeCellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .center) {
            Image(hike.photo)
                .resizable()
                .cornerRadius(20)
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
            VStack {
                Text(hike.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
