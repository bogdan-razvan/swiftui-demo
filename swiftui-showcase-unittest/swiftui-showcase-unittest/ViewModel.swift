
//
//  ViewModel.swift
//  swiftui-showcase-unittest
//
//  Created by bogdan razvan on 18.04.2023.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""

    var isButtonDisabled: Bool {
        username.isEmpty || password.isEmpty
    }
}
