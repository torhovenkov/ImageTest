//
//  DetailView.swift
//  ImageTest
//
//  Created by Vladyslav Torhovenkov on 20.08.2023.
//

import SwiftUI

struct DetailView: View {
    @Binding var showFromTop: Bool
    var body: some View {
        ZStack {
            GeometryReader { geo in
                Image("panda")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .leading)
            }
            .ignoresSafeArea()
            VStack(alignment: .trailing) {
                HStack{
                    Spacer()
                    Button {
                        showFromTop = false
                    } label: {
                        CloseButtonLabel()
                        
                    }
                    .padding(20)
                }
                Spacer()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(showFromTop: .constant(false))
    }
}


