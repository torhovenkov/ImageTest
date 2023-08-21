//
//  ContentView.swift
//  ImageTest
//
//  Created by Vladyslav Torhovenkov on 20.08.2023.
//

import SwiftUI

struct MainScreen: View {
    @StateObject var viewModel = MainScreenVM()
    @State var arr = Array(repeating: false, count: 10)
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
                        BrandButtonLabel(text: viewModel.isLocked ? "Unlock" : "Lock")
                    }
                    Button {
                        viewModel.showFromTop.toggle()
                    } label: {
                        BrandButtonLabel(text: "Open From Top", disabled: viewModel.isLocked)
                    }
                    .disabled(viewModel.isLocked)
                }
                .padding(.horizontal, 20)
                ScrollView {
                    ForEach(0..<arr.count, id: \.self) {elem in
                            Button {
                                arr[elem].toggle()
                            } label: {
                                HStack{
                                    Text("Text \(elem)")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: arr[elem] ? "circle.fill" : "circle")
                                        .foregroundColor(.red)
                                }
                                .padding(.top, 1)
                            }

                        }
                        .padding(.horizontal)
                }
                Spacer()
                Button {
                    
                } label: {
                    BrandButtonLabel(text: "Open full")
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


