//
//  ContentView.swift
//  swiftui-showcase-unittest
//
//  Created by bogdan razvan on 18.04.2023.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $viewModel.username)
                .accessibilityIdentifier("usernameTextField")
            TextField("Password", text: $viewModel.password)
                .accessibilityIdentifier("passwordTextField")
            Button(action: { }) {
                Text("Submit")
                    .frame(maxWidth: .infinity)
            }
            .disabled(viewModel.isButtonDisabled)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .accessibilityIdentifier("submitButton")
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
