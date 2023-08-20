//
//  BrandButton.swift
//  ImageTest
//
//  Created by Vladyslav Torhovenkov on 20.08.2023.
//

import SwiftUI

struct BrandButtonLabel: View {
    let text: String
    var disabled: Bool = false
    var body: some View {
        ZStack {
            Rectangle()
                .stroke(.indigo, lineWidth: 3)
                .frame(height: 56)
                .background(.blue)
                .cornerRadius(18)
            Text(text)
                .foregroundColor(.white)
                .frame(height: 56)
                .font(.system(size: 22))
                
        }
        .opacity(disabled ? 0.5 : 1)
    }
}

struct BrandButton_Previews: PreviewProvider {
    static var previews: some View {
        BrandButtonLabel(text: "Brand Button")
    }
}
