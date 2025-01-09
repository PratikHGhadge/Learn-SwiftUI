//
//  SerchBar.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 08/01/25.
//

import SwiftUI

struct SerchBarView: View {
    @State private var search = ""
    @State private var cities: [String] = ["Pune", "Baramati", "Mumbai", "Baner"]
    @State private var filteredCities: [String] = []
    
    var body: some View {
        VStack {
            List(filteredCities, id: \.self) { city in
                Text(city)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) { newValue in
                if filteredCities.isEmpty {
                    filteredCities = cities
                } else {
                    filteredCities = cities.filter { $0.contains(newValue) }
                }
            }
            Spacer()
        }
        .padding()
        .onAppear(perform: {
            filteredCities = cities
        })
        .navigationTitle("City")
    }
}

struct SerchBarView_Preview: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SerchBarView()
        }
    }
}
