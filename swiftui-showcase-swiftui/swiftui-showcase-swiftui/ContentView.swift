//
//  ContentView.swift
//
//  Created by bogdan razvan on 10.04.2023.
//

import SwiftUI

struct ContentView: View {

    @State private var username = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $username)
            TextField("Password", text: $password)
            Button(action: { }) {
                Text("Submit")
                    .frame(maxWidth: .infinity)
            }
            .disabled(username.isEmpty || password.isEmpty)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
