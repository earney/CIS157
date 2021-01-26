//
//  ContentView.swift
//  SimpleSplashScreen
//
//  Created by Billy Earney on 1/26/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isActive = false
    
    var body: some View {
        VStack {
            if self.isActive {
                Text("This is where our main program goes..")
            } else {
                Text("My Awesome Splash Screen!")
                    .font(Font.largeTitle)
                    .foregroundColor(.red)
            }
        }// VStack
        .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive=true
                    }
                }
        }
    }//View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
