//
//  ContentView.swift
//  Button_with_Images_and_Text
//
//  Created by Billy Earney on 1/12/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
         
        //basic example
        Button(action: {
            print("Delete button tapped")
        }) {
            Image(systemName:"trash")
                .font(.largeTitle)
                .foregroundColor(.red)
        }
        
        
        /*
        // now lets look at adding some background color
        Button(action: {
            print("Delete button tapped")
        }) {
            Image(systemName: "trash")
                .padding()
                .background(Color.red)
                .clipShape(Circle()) //make it a circle
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        */
        
        /*
        //lets add the text Delete next to the trash can
        Button(action: {
            print("Delete tapped")
        }) {
            HStack {  //this says to put "stuff below" on same line
              Image(systemName: "trash")
                .font(.title)
              Text("Delete")
                .fontWeight(.semibold)
                .font(.title)
            }
            //.frame(minWidth:0, maxWidth: .infinity)   //setss to full width
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(40)
        }
        */
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
