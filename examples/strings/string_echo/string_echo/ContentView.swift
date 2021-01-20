//
//  ContentView.swift
//  string_echo
//
//  Created by Billy Earney on 1/20/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var str=""
    @State var echo=""
    
    var body: some View {
        VStack {
            TextField("Enter some text:", text:$str).padding()
    
            Button(action:{self.echo="...( \(self.str) )..."}) {
               Text("Echo Text")
            }.padding()
        
            Text(echo).bold().padding()
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
