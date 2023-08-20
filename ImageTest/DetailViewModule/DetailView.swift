//
//  DetailView.swift
//  ImageTest
//
//  Created by Vladyslav Torhovenkov on 20.08.2023.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Image("panda")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
