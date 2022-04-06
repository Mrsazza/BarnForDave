//
//  DropDown.swift
//  BarnForDave
//
//  Created by Sazza on 7/4/22.
//

import SwiftUI

struct DropDown: View {
    
    // MARK: - PROPERTIES
    @State var value = ""
    var placeholder = "+1"
    var dropDownList = ["+1", "+90", "+880", "+07"]
    var leftIcon = true
    var rightIcon = false
    
    // MARK: - BODY
    var body: some View {
        Menu {
            ForEach(dropDownList, id: \.self){ countryCode in
                Button(countryCode) {
                    self.value = countryCode
                }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    if rightIcon{
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.gray)
                            .font(Font.system(size: 20, weight: .bold))
                    }
                    Text(value.isEmpty ? placeholder : value)
                        .foregroundColor(value.isEmpty ? .gray : .black)
                    Spacer()
                    if leftIcon {
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.gray)
                            .font(Font.system(size: 20, weight: .bold))
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame( height: 50)
                        .foregroundColor(.white)
                )
                .padding(.horizontal)
            }
        }
    }
}

// MARK: - PREVIEW
struct DropDown_Previews: PreviewProvider {
    static var previews: some View {
        DropDown()
    }
}
