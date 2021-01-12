//
//  ContentView.swift
//  demo
//
//  Created by Billy Earney on 1/9/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var a: String=""
    @State var b: String=""
    @State var total: Int=0
    
    var body: some View {
       // NavigationView {
            VStack{
                //HStack {
                    HStack {
                        Text("Please enter in two numbers")
                    }
                    HStack {
                        Text("Number 1:")
                        TextField("", text: $a)
                    }
                    HStack {
                        Text("Number 2:")
                        TextField("", text: $b)
                    }
                    HStack {
                        Button(action: {self.total=execute(x:self.a,y:self.b)}) {
                            Text("out:\(total)")
                        }
                    }
                //} // HStack
            } // VSTack
       // }  //NavigationView
    }
}

func execute (x:String, y:String) -> Int {
    let int_x = Int(x) ?? 0
    let int_y = Int(y) ?? 0
    
    return int_x + int_y;
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
