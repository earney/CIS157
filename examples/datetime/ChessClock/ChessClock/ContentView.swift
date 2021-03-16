//
//  ContentView.swift
//  ChessClock
//
//  Created by Billy Earney on 1/28/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var time1 = 0.0
    @State var time2 = 0.0
    @State var timeButtonPressed = Date().timeIntervalSinceReferenceDate
    
    @State var myturn: Bool = true
    
    var body: some View {
            HStack {
                if (myturn) {
                    buildButton1(active:true)
                    buildButton2(active:false)
                } else {
                    buildButton1(active:false)
                    buildButton2(active:true)
                } // if
            } //HStack
    }

    func buildButton1(active: Bool) -> some View {
        switch (active) {
        case true:
            return AnyView(Button (action: {    let duration = Date().timeIntervalSinceReferenceDate - self.timeButtonPressed
                                                self.time1 += duration
                                                self.timeButtonPressed = Date().timeIntervalSinceReferenceDate;
                                                self.myturn.toggle()
                                    },
                                   label: {
                                    Text("\(100.0 - self.time1, specifier: "%.1f")").padding().background(Color.green)
                                   }))
        case false:
            return AnyView(Button (action: {},
                                   label: {
                                    Text("\(100.0 - self.time1, specifier: "%.1f")").padding().background(Color.red)
            }))
        } // switch
    } //func
    
    func buildButton2(active: Bool) -> some View {
        switch (active) {
        case true:
            return AnyView(Button (action: {    let duration = Date().timeIntervalSinceReferenceDate - self.timeButtonPressed
                                                self.time2+=duration
                                                self.timeButtonPressed = Date().timeIntervalSinceReferenceDate;
                                                self.myturn.toggle()
                                    },
                                   label: {
                                    Text("\(100.0 - self.time2, specifier: "%.1f")").padding().background(Color.green)
                                   }))
        case false:
            return AnyView(Button (action: {},
                                   label: {
                                    Text("\(100.0 - self.time2, specifier: "%.1f")").padding().background(Color.red)
            }))
        } // switch
    } //func
    
    
} // ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
