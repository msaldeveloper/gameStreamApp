//
//  ContentView.swift
//  GameStream
//
//  Created by mario saldaña martinez on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        InitSessionView()
    }
}


struct Pantalla01: View {
    var body: some View {
        Image("pantalla01")
    }
}

#Preview("pantalla02") {
    Image("pantalla02").resizable()
}

#Preview("pantalla01") {
    ContentView()
}


