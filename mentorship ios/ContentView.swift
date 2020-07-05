//
//  ContentView.swift
//  Created on 30/05/20.
//  Created for AnitaB.org Mentorship-iOS 
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var selection = 0
    @ObservedObject var authModel = AuthModel()

    @ViewBuilder var body: some View {
        if authModel.isLogged! {
            TabBar(selection: $selection)
        } else {
            Login()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
