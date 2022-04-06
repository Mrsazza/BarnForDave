//
//  TextFieldVC.swift
//  BarnForDave
//
//  Created by Sazza on 7/4/22.
//

import SwiftUI

struct TextFieldVC: View {
    
    // MARK: - PROPERTIES
    @State private var name: String = ""
    @State var border: Bool = false
    @State var placeholder: String = ""
    // MARK: - BODY
    var body: some View {
        TextField(placeholder, text: $name)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame( height: 50)
                    .foregroundColor(.white)
                    .overlay(
                               RoundedRectangle(cornerRadius: 20)
                                .stroke( border ? Color.black: Color.white, lineWidth: 5)
                           )
        )
    }
}

// MARK: - PREVIEW
struct TextFieldVC_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldVC()
            .previewLayout(.sizeThatFits)
          //  .preferredColorScheme(.dark)
    }
}
