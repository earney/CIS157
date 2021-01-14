//
//  ContentView.swift
//  isLoggedOn
//
//  Created by Billy Earney on 1/14/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var userIsLoggedIn = false
    
    var body: some View {
        VStack {
            Toggle(isOn:$userIsLoggedIn) {
                Text("Log in")
            }//.padding()
            
            if (userIsLoggedIn) {
                Text("User is logged in.")
            } else {
                Text("User is logged out.")
            }
        } // VStack
    } //body
} // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
