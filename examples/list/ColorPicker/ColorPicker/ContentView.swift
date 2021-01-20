//
//  ContentView.swift
//  ColorPicker
//
//  Created by Billy Earney on 1/14/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    let colors = ["Red", "Yellow", "Green", "Blue"]
    
    var body: some View {
        VStack {
        Picker(selection:$selection,
               label: Text("Pick a color:")) {
                //note  a for i in loop will not work
                // we get an Closure containing ... cannot be used in View builder error ..
                //for i in 0 ..< colors.count {
                //   Text(self.colors[i]).tag(i)
                //}
                ForEach (0..<colors.count) { i in
                    //set value in the picker widget
                    //.tag sets a value to associate with
                    // the text
                    Text(self.colors[i])//.tag(i)
                }
        }
        } //vstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
