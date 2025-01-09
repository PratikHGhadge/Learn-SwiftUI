//
//  Form.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 08/01/25.
//

import SwiftUI

struct FormView: View {
    @State private var name = ""
    @State private var friends: [String] = []

    var body: some View {
        VStack {
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
            List(friends, id: \.self) { friend in
                Text(friend)
            }
            Spacer()
        }.padding()
            .navigationTitle("Form")
    }
}

struct FormView_Preview: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FormView()
        }
    }
}

