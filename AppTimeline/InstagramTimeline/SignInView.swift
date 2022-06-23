//
//  SignInView.swift
//  AppTimeline
//
//  Created by Doniyor on 17/06/22.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var openNextPage: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Spacer()
                
                Group {
                    Image("avatar_1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .padding(.bottom, 10)
                        
                    TextField("Enter email", text: $email)
                        .frame(height: 45)
                        .padding(.leading, 10)
                        .foregroundColor(.white)
                        .background(Color.gray .opacity(0.2))
                        .cornerRadius(25)
                    
                    SecureField("Enter password", text: $password)
                        .frame(height: 45)
                        .padding(.leading, 10)
                        .foregroundColor(.white)
                        .background(Color.gray .opacity(0.2))
                        .cornerRadius(25)
                }
                
                Button {
                    UserDefaults.standard.set(true, forKey: "Status")
                    NotificationCenter.default.post(name: NSNotification.Name("Status"), object: nil)
                } label: {
                    HStack {
                        Spacer()
                        
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(height: 45)
                              
                        Spacer()
                    }
                    .background(Color.red)
                    .cornerRadius(25)
                }
                Spacer()
            
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.blue)
                    
                    Button {
                        openNextPage = true
                    } label: {
                        Text("Sign Up")
                            .font(.headline)
                    }
                    .sheet(isPresented: $openNextPage) {
                        SignUpView()
                    }
                }
            }
            .padding()
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
