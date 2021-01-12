//
//  ContentView.swift
//  helloworld
//
//  Created by Billy Earney on 1/12/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

// additional info and examples provided at https://www.appcoda.com/swiftui-buttons/

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, World!")            // displays "Hello World"
            .padding()                      // 1. add padding
            .background(Color.green)      // 2. Change background color to green
            .foregroundColor(Color.white) // 3. change forground color (text color) to white
            .font(.title)              // 4. change the font type to .title (bigger text)
            .border(Color.yellow, width:5) // adds yellow border
    
        
        /*
        Text("Hello World")
            .fontWeight(.bold)
            .font(.title)
            .padding()
            .background(Color.purple)
            .cornerRadius(40)
            .foregroundColor(.white)
            .padding(10)
            //.border(Color.purple, width:5)
            // (border or the text below)
            .overlay ( RoundedRectangle(cornerRadius:40)
            .stroke(Color.purple, lineWidth:5)
            )
     */
        
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
