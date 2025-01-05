//
//  Profile.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 05/01/25.
//

import SwiftUI

struct Profile: View {
    @AppStorage("username") var username: String = "Pratik"
    var body: some View {
        ZStack {
            
            // Background Image
            Image("bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            // Content
            VStack(spacing: 25) {
                // Profile Image
                Image("profilepic")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(100)
                    .shadow(color: .red, radius: 5, x: 5, y: 5)
                
                VStack {
                    Text("Pratik Ghadge")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 0.30)
                    
                    Text("iOS | Fullstack Developer")
                        .font(.title3)
                }
                
                // Links
                HStack(spacing: 44) {
                    Image(systemName: "heart.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(systemName: "phone.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(systemName: "message.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(systemName: "network")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .padding(.horizontal, 100)
                
                // Follow button
                Button {
                    print("Button pressed TODO")
                } label: {
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 240, height: 60)
                        .foregroundColor(.white)
                        .shadow(radius: 5, y: 5)
                        .overlay(
                            Text("Follow")
                                .font(.system(size: 30))
                                .foregroundColor(.pink)
                                .fontWeight(.semibold)
                        )
                }
                
                // Connections
                HStack(spacing: 80) {
                    // Followers
                    VStack {
                        Text("545")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.medium)
                        Text("Followers")
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.regular)
                    }
                    
                    // Following
                    VStack {
                        Text("364")
                            .foregroundColor(.white)
                            .font(.title)
                        Text("Following")
                            .foregroundColor(.black)
                            .font(.title)
                    }
                }
                
                // Bio
                VStack(spacing: 10) {
                    Text("About User")
                        .font(.largeTitle)
                        .foregroundColor(.black.opacity(0.7))
                        .fontWeight(.medium)
                    
                    Text("Hi, i am Pratik Ghage i am Software Engineer working as iOS Developer at RSL. I have experince in MERN Stack as well as backend development 🚀")
                        .font(.title3)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 60)
                }
                
                Spacer()
                    
            }
            .padding(.horizontal)
        }
    }
    
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
