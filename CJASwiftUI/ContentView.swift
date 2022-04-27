//
//  ContentView.swift
//  CJASwiftUI
//
//  Created by Brian Hashirama on 27/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            //TOP VIEW
            VStack {
                Image("safety")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 54)
                
                VStack(spacing: 12) {
                    Text("Welcome to Saifty!")
                        .font(.system(size: 20, weight: .semibold))
                    Text("Keep your data safe!")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                    
                }
            }
            .padding(.bottom, 32)
            
            
            //FORM
            VStack(spacing: 12) {
                TextField("Email", text: $email)
                    .padding()
                    .background(.bar)
                    .cornerRadius(8.0)
                    .padding(.horizontal, 32)
                    .font(.system(size: 14, weight: .medium))
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(.bar)
                    .cornerRadius(8.0)
                    .padding(.horizontal, 32)
                    .font(.system(size: 14, weight: .medium))
            }
            .padding(.bottom, 32)
            
            
            //BUTTONS
            VStack(spacing: 12) {
                Button(action: {print("Button tapped")}) {
                    Text("Login")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .background(Color.blue)
                        .cornerRadius(8.0)
                        .padding(.horizontal, 32)
                }
                
                Button(action: {print("Button tapped")}) {
                    Text("Forgot password?")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                
            }
            
            Spacer()
            
            //LAST BUTTON
            HStack(spacing: 4) {
                Text("Don't have an account?")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                Button(action: { print("Button tapped") }) {
                    Text("Register!")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 12)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
