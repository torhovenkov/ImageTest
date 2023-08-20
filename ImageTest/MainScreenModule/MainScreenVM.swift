//
//  MainScreenVM.swift
//  ImageTest
//
//  Created by Vladyslav Torhovenkov on 20.08.2023.
//

import Foundation

extension MainScreen {
    @MainActor
    class MainScreenVM: ObservableObject {
        @Published var showFromTop = false
        @Published var isLocked = false
    }
}
