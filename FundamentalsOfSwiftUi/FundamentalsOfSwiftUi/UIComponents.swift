//
//  UIComponents.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 05/01/25.
//

import SwiftUI

struct UIComponents: View {
    @AppStorage("username") var username: String = "Pratik"
    var body: some View {
        
        // MARK: 1 - Text
        Text("Hello, SwiftUI!")
            .font(.largeTitle) // Large title font
            .foregroundColor(.accentColor) // Text color
            .bold() // Make text bold
        
        Text("This is a multi-line text example.")
            .multilineTextAlignment(.trailing) // Center-align text
            .lineLimit(1) // Limit to 2 lines
            .padding()
        
        Text("SwiftUI makes UI development fast and easy!")
            .italic() // Italic text
            .underline() // Underlined text
            .strikethrough(true, color: .red) // Strikethrough text
            .padding()
        
        // MARK: 2 - Image
        // Image from Assets
        Image("exampleImage") // Add an image to your assets
            .resizable() // Make it resizable
            .scaledToFit() // Scale it proportionally
            .frame(width: 150, height: 150) // Set frame

        // System Image
        Image(systemName: "star.fill") // SF Symbol
            .font(.system(size: 50)) // Adjust size
            .foregroundColor(.yellow) // Change color

        // Circular Image
        Image("profilePicture")
            .resizable()
            .clipShape(Circle()) // Clip to a circle
            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Add border
            .shadow(radius: 10) // Add shadow
        
        // MARK: 2 - Button
        VStack(spacing: 20) {
            // Simple Button
            Button("Click Me") {
                print("Button was clicked!")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            // Button with a Label
            Button(action: {
                print("Heart button clicked!")
            }) {
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text("Like")
                        .foregroundColor(.black)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            }
            
            // MARK: 3 - HStack
            HStack {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            .padding()
            
            // MARK: 4 - VStack
            VStack {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            .padding()
            
            // MARK: 5 - ZStack
            ZStack {
                Color.blue // Background color
                    .edgesIgnoringSafeArea(.all) // Extend to safe area
                
                Text("Hello, ZStack!")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
            // MARK: 5 - Spacer
                HStack {
                    Text("Start")
                    Spacer() // Flexible space
                    Text("Middle")
                    Spacer() // Flexible space
                    Text("End")
                }
                .padding()
                
                // MARK: 5 - Divider
                VStack {
                    Text("Above Divider")
                    Divider()
                        .background(Color.gray)
                    Text("Below Divider")
                }
                .padding()
            
                // MARK: 5 - Combining Components
                VStack(spacing: 20) {
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()

                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 100))
                        .foregroundColor(.blue)

                    Text("Enter your details below:")
                        .foregroundColor(.gray)

                    TextField("Name", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    Button("Submit") {
                        print("Submit button tapped")
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct UIComponents_Previews: PreviewProvider {
    static var previews: some View {
        UIComponents()
    }
}
