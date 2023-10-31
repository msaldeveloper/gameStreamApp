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
            Color(red: 19 / 255, green: 30 / 255, blue: 53 / 255, opacity: 1.0).ignoresSafeArea()
            VStack {
                Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250).padding(.bottom, 40)
                InicioYRegistroView()
            }
        }
    }
}

struct InicioYRegistroView: View {
    @State var selectorSession = true
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("INICIA SESIÓN") {
                     selectorSession = true
                    print("inicio sesion boton presionado")
                }
                .foregroundColor(selectorSession ? .white : .gray)
                Spacer()
                Button("REGÍSTRATE") {
                    self.selectorSession = false
                    print("registro boton presionado")
                    print(selectorSession)
                }
                .foregroundColor(selectorSession ? .gray : .white)
                Spacer()
            }
            Spacer()
            if selectorSession == true {
                InicioSesionView()
            }else {
                RegistroView()
            }
            
        }
    }
}

struct InicioSesionView: View {
    var body: some View {
        Text("soy la vista de inicio de sesion")
    }
}

struct RegistroView: View {
    var body: some View {
        Text("Soy la vista de registro")
    }
}

struct Pantalla01: View {
    var body: some View {
        Image("pantalla01")
    }
}

#Preview("pantalla01") {
    Pantalla01()
}

#Preview("miPantalla01") {
    ContentView()
}
