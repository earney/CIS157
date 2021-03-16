//
//  ContentView.swift
//  bookmarks
//
//  Created by Billy Earney on 1/26/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

//NOTE:  This example does not work for now...

import SwiftUI

struct ContentView: View {
    let bookmarks=[
        "Wallace": "http://wallace.edu",
        "Blackboard": "https://courses.wallace.edu",
        "Wallace Email": "https://www.wallace.edu/stuemail/"
    ]
    
    //var keys = bookmarks.keys.sorted()
    
    
    var body: some View {
        VStack {
            
            //ForEach(0..<keys.count) { index in
            //ForEach(keys, id:\.self) { index in
            //ForEach(bookmarks.keys.sorted(), id: \.self) { key in
            self.bookmarks.forEach {
            //(self.bookmarks) { key in
            //ForEach(0..<mycount) { index in
            //var key = keys[index]
                //NavigationLink(destination:URL(string: self.bookmarks[key])!) {
                //    Text("\(key)")
                //}
                //Spacer()
            }
        }
        .padding(.all, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
