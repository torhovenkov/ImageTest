//
//  CloseButtonLabel.swift
//  ImageTest
//
//  Created by Vladyslav Torhovenkov on 20.08.2023.
//

import SwiftUI

struct CloseButtonLabel: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 32, height: 32)
                .foregroundColor(.gray)
            Image(systemName: "xmark")
                .foregroundColor(.white)
        }
    }
}

struct CloseButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        CloseButtonLabel()
    }
}
