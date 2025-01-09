//
//  UsingEnvironment.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 09/01/25.
//

// MARK: Use of Observable


import SwiftUI

class AppState: ObservableObject {
    @Published var isOn: Bool = false
}

struct ToggleBulbView: View {
    @EnvironmentObject private var appState: AppState

    var body: some View {
        VStack {
            LightRoomView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(appState.isOn ? .yellow : .black)
        }
    }
}

struct LightRoomView: View {

    var body: some View {
        LightBulbView()
    }
}

struct LightBulbView: View {
    
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: appState.isOn ? "lightbulb.fill" : "lightbulb")
                .foregroundColor(.white)
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .yellow : .black)
            Button("Toggle") {
                appState.isOn.toggle()
            }
        }
            
    }
}

struct ToggleBulbView_Preview: PreviewProvider {
    static var previews: some View {
        ToggleBulbView().environmentObject(AppState())
    }
}

