//
//  SignUpView.swift
//  AppTimeline
//
//  Created by Doniyor on 18/06/22.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var firstname: String = ""
    @State private var lastname: String = ""
    @State private var email: String = ""
    @State private var address: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    @Environment(\.presentationMode) var presentation
    @State private var closePage: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Spacer()
                
                Group {
                    TextField("Enter firstname", text: $firstname)
                        .frame(height: 45)
                        .padding(.leading, 10)
                        .background(Color.gray .opacity(0.2))
                        .cornerRadius(25)
                    
                    TextField("Enter lastname", text: $lastname)
                        .frame(height: 45)
                        .padding(.leading, 10)
                        .background(Color.gray .opacity(0.2))
                        .cornerRadius(25)
                    
                    TextField("Enter email", text: $email)
                        .frame(height: 45)
                        .padding(.leading, 10)
                        .background(Color.gray .opacity(0.2))
                        .cornerRadius(25)
                    
                    TextField("Enter address", text: $address)
                        .frame(height: 45)
                        .padding(.leading, 10)
                        .background(Color.gray .opacity(0.2))
                        .cornerRadius(25)
                    
                    SecureField("Enter password", text: $password)
                        .frame(height: 45)
                        .padding(.leading, 10)
                        .background(Color.gray .opacity(0.2))
                        .cornerRadius(25)
                    
                    SecureField("Confirm password", text: $confirmPassword)
                        .frame(height: 45)
                        .padding(.leading, 10)
                        .background(Color.gray .opacity(0.2))
                        .cornerRadius(25)
                }
                
                Button {
                    
                } label: {
                    HStack {
                        Spacer()
                        
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                        Spacer()
                    }
                    .frame(height: 45)
                    .background(Color.red)
                    .cornerRadius(25)
                }
                
                Spacer()
                
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.blue)
                    
                    Button {
                        closePage = true
                        presentation.wrappedValue.dismiss()
                    } label: {
                        Text("Sign In")
                            .font(.headline)
                    }
                }
            }
            .padding()
            
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
