//
//  LogInView.swift
//  EffectiveMobile-test
//
//  Created by Mnatsakan Zurnadzhian on 16.03.23.
//

import SwiftUI

struct LogInView: View {
    @State var firstName: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Welcome back")
                .font(.largeTitle)
            
            Spacer()
            
            TextField("First name", text: $firstName)
                .frame(height: 30)
                .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 15))
                .padding(.vertical, 15)
            
            SecureField("Password", text: $password)
                .frame(height: 30)
                .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 15))
                .padding(.vertical, 15)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(height: 50)
            }
            .frame(maxWidth: .infinity)
            .background(.blue, in: RoundedRectangle(cornerRadius: 15))
            .padding(.vertical, 15)
            
            Spacer()
            
            Spacer()
            
        } //VSTACK
        .padding(.horizontal, 50)
        .multilineTextAlignment(.center)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
