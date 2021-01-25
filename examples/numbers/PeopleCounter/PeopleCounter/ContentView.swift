//
//  ContentView.swift
//  PeopleCounter
//
//  Created by Billy Earney on 1/25/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int=0
    
    var body: some View {
        
        VStack {
            Text("\(count)").font(.system(size:76.0)).padding()
        
            Divider()
        HStack {
            Button(action: {self.count=self.count-1}) {
                Text("-1").padding().background(Color.red)
                    .font(.title)
            }
            
            Button(action: {self.count=self.count+1}) {
                Text("+1").padding().background(Color.green).font(.title)
            }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
