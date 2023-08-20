//
//  ContentView.swift
//  ImageTest
//
//  Created by Vladyslav Torhovenkov on 20.08.2023.
//

import SwiftUI

struct MainScreen: View {
    @StateObject var viewModel = MainScreenVM()
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
        GeometryReader { geo in
            VStack {
                Image("panda")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: geo.size.height * 0.3, alignment: .leading)
                    .clipped(antialiased: true)
                HStack(spacing: 20) {
                    Button {
                        viewModel.isLocked.toggle()
                    } label: {
                        BrandButton(text: viewModel.isLocked ? "Unlock" : "Lock")
                    }
                    Button {
                        viewModel.showFromTop.toggle()
                    } label: {
                        BrandButton(text: "Open From Top", disabled: viewModel.isLocked)
                    }
                    .disabled(viewModel.isLocked)
                }
                .padding(.horizontal, 20)
                
                Spacer()
                Button {
                    
                } label: {
                    BrandButton(text: "Open full")
                        .padding(.horizontal, 20)
                }
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
            
        }
        //MARK: - Detail View from top
        .overlay {
            if viewModel.showFromTop {
                DetailView(showFromTop: $viewModel.showFromTop)
                    .transition(.move(edge: .top))
                    .transaction {
                        $0.animation = .default
                    }
            }
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}


