//
//  ContentView.swift
//  ImageExample
//
//  Created by Billy Earney on 1/26/21.
//  Copyright © 2021 Billy Earney. All rights reserved.
//

import SwiftUI

// this example shows how to display a simple image.
// example taken from:
//https://www.simpleswiftguide.com/how-to-add-image-to-xcode-project-in-swiftui/


struct ContentView: View {
    var body: some View {
        Image("wcc_image")
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
