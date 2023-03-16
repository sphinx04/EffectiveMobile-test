//
//  SignInView.swift
//  EffectiveMobile-test
//
//  Created by Mnatsakan Zurnadzhian on 16.03.23.
//

import SwiftUI

struct SignInView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Sign in")
                .font(.largeTitle)
            
            Spacer()
            
            TextField("First name", text: $firstName)
                .frame(height: 30)
                .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 15))
                .padding(.vertical, 15)
            
            TextField("Last name", text: $lastName)
                .frame(height: 30)
                .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 15))
                .padding(.vertical, 15)
            
            TextField("Email", text: $email)
                .frame(height: 30)
                .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 15))
                .padding(.vertical, 15)
            
            Button {
                
            } label: {
                Text("Sign in")
                    .foregroundColor(.white)
                    .frame(height: 50)
            }
            .frame(maxWidth: .infinity)
            .background(.blue, in: RoundedRectangle(cornerRadius: 15))
            .padding(.vertical, 15)
            
            HStack() {
                Text("Already have an account?")
                    .font(.system(size: 12))
                Button {
                    
                } label: {
                    Text("Log in")
                        .font(.system(size: 12))
                }
                
                Spacer()
            } // HSTACK
            .frame(maxWidth: .infinity)
            
            VStack {
                
                Button {
                    
                } label: {
                    HStack {
                        Text("G")
                            .font(.title)
                            .fontWeight(.black)
                        Text("Sign in with Google")
                    }
                }
                .padding()
                
                Button {
                    
                } label: {
                    HStack(alignment: .center) {
                        Image(systemName: "apple.logo")
                            .font(.title)
                            .fontWeight(.black)
                        Text("Sign in with Apple")
                    }
                }
                .padding()
                
            } // VSTACK
            .foregroundColor(.black)
            .padding(.vertical, 20)
            
            Spacer()
            
        } //VSTACK
        .padding(.horizontal, 50)
        .multilineTextAlignment(.center)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
