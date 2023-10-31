//
//  ContentView.swift
//  GameStream
//
//  Created by mario saldaña martinez on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:19/255, green: 30/255, blue: 53/255, opacity: 1.0).ignoresSafeArea()
            VStack {
                Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250)
                InicioYRegistroView()
            }
        }
    }
}

struct InicioYRegistroView : View {
    var body : some View {
        VStack {
            HStack {
                Text("INICIA SESIÓN")
                Text("REGÍSTRATE")
            }
            
        }
    }
    
}

struct Pantalla01: View {
    var body: some View {
        Image("pantalla01")
    }
}
#Preview("pantalla01"){
    Pantalla01()
}
#Preview("miPantalla01"){
    ContentView()
}

