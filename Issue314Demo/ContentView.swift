//
//  ContentView.swift
//  Issue314Demo
//
//  Created by Tom Wu on 2024-01-30.
//

import SwiftUI

struct ContentView: View {
    @State private var showMessage = false
    var body: some View {
        ScrollView{
            VStack{
                Text("Hello World")
                Button("Click me") {
                                self.showMessage.toggle()
                            }
                            .padding()
                            .alert(isPresented: $showMessage) {
                                Alert(title: Text("Hi"))
                            }
                Text("Description")
            }
        }
        .padding()
    }
}

#Preview("English") {
    ContentView()
        .environment(\.locale, Locale(identifier: "en"))
}

#Preview("Chinese-Simplified") {
    ContentView()
        .environment(\.locale, Locale(identifier: "zh-hans"))
}
