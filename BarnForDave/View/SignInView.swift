//
//  SignInView.swift
//  BarnForDave
//
//  Created by Sazza on 6/4/22.
//

import SwiftUI

struct SignInView: View {
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1792411804, green: 0.09138893336, blue: 0.258828789, alpha: 1))
            
            VStack {
                Spacer()
                HStack {
                    Text("Sign In")
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    Spacer()
                    
                }
                Text("What's your mobile number?")
                    .foregroundColor(.white)
                HStack {
                    DropDown()
                        .frame(width: 120)
                    TextFieldVC( placeholder: "Enter your number")
                }
                Spacer()
                DropDown( placeholder: "PlaceHolder", dropDownList: ["anything","something"], leftIcon: false, rightIcon: true)
                Spacer()
                HStack{
                    Button(action: {
                        //
                    }, label: {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .padding()
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("Terms")
                            .foregroundColor(.white)
                            .padding()
                    })
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW
struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SignInView()
            SignInView()
                .previewDevice("iPhone 8 Plus")
        }
    }
}
