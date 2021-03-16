//
//  ContentView.swift
//  ColorPicker
//
//  Created by Billy Earney on 1/14/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    @State private var selection = 0;
    let colors = [Color.black, Color.blue, Color.gray, Color.green, Color.orange, Color.pink, Color.purple, Color.red, Color.white, Color.yellow] //, Color.init("brown", red:0.0, green:0.0, blue:0.0)]
    
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
                    if self.colors[i] == .white {
                        Text(self.colors[i].description).foregroundColor(.black)
                    } else {
                      Text(self.colors[i].description).foregroundColor(self.colors[i])
                    }
                }
               } //label
        } //vstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
