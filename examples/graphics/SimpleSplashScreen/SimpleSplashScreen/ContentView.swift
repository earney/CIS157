//
//  ContentView.swift
//  SimpleSplashScreen
//
//  Created by Billy Earney on 1/26/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isActive = false  //should we show the main screen or the splash screen?
    
    var body: some View {
        VStack {
            if self.isActive {  //show main screen
                Text("This is where our main program goes..")
            } else { //show splash screen
                Text("My Awesome Splash Screen!")
                    .font(Font.largeTitle)
                    .foregroundColor(.red)
            }
        }// VStack
        .onAppear {  // when program starts up, set isActive set to true after 2.5 seconds
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
