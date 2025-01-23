//
//  SigninView.swift
//  movieisme
//
//  Created by Wajd Wael on 20/07/1446 AH.
//

import SwiftUI

struct SigninView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @FocusState private var isFocusedEmail: Bool
    @FocusState private var isFocusedPassword: Bool
    @State private var isPasswordHidden: Bool = true

    
    var body: some View {
        ZStack{
            // Background images
            Image("Signin_background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            Image("Linear_layer")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)

            // Content
            VStack (alignment: .leading) {
                Spacer()

                VStack (alignment: .leading, spacing: 8) {
                    Text("Sign in")
                        .foregroundStyle(.white)
                        .font(.system(size: 40, weight: .bold))
                    Text("You'll find what you're looking for in the ocean of movies")
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                VStack (alignment: .leading, spacing: 24) {
                    // inputs
                    VStack (alignment: .leading, spacing: 24) {
                        VStack (alignment: .leading, spacing: 8) {
                            Text("Email")
                                .foregroundStyle(Color("SecondaryTextColor"))
                                .font(.system(size: 18, weight: .medium))
                            
                            TextField(
                                "",
                                text: $email,
                                prompt: Text("Enter your email").foregroundColor(Color("placeholderColor"))
                            )
                                .accentColor(Color("MainColor"))
                                .padding(.all, 12)
                                .accentColor(Color.white)
                                .foregroundColor(.white)
                                .background(Color("LabelColor"))
                                .cornerRadius(8)
                            
                                // Foocus state
                                .focused($isFocusedEmail)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(isFocusedEmail ? Color("MainColor") : Color.clear, lineWidth: 1)
                                )
                        }
                        
                        VStack (alignment: .leading, spacing: 8) {
                            Text("Password")
                                .foregroundStyle(Color("SecondaryTextColor"))
                                .font(.system(size: 18, weight: .medium))
                            
                            SecureField(
                                "",
                                text: $password,
                                prompt: Text("Enter your password").foregroundColor(Color("placeholderColor"))
                            )
                                .accentColor(Color("MainColor"))
                                .padding(.all, 12)
                                .accentColor(Color.white)
                                .foregroundColor(.white)
                                .background(Color("LabelColor"))
                                .cornerRadius(8)
                            
                                // Foocus state
                                .focused($isFocusedPassword)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(isFocusedPassword ? Color("MainColor") : Color.clear, lineWidth: 1)
                                )
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    
                    VStack {
                        Button("Sign in") {
                            isFocusedEmail = false
                            isFocusedPassword = false
                        }
                            .font(.system(size: 18, weight: .regular))
                            .foregroundColor(Color("LabelColor"))
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color("SecondaryTextColor"))
                            .cornerRadius(8)
                    }
                    .padding()
                    .padding(.bottom, 50)

                }
            }
        }
    }
}

#Preview {
    SigninView()
}
