//
//  InitScreenSelector.swift
//  GameStream
//
//  Created by mario saldaña martinez on 01/11/23.
//

import SwiftUI
struct InitSessionView: View {
    var body: some View {
        ZStack {
            Color(red: 19 / 255, green: 30 / 255, blue: 53 / 255, opacity: 1.0).ignoresSafeArea()
            VStack {
                Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250).padding(.bottom, 40)
                InitScreenSelector()
            }
        }
    }
}

struct InitScreenSelector: View {
    @State var selectorSession = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("INICIA SESIÓN") {
                    selectorSession = true
                    print("inicio sesion boton presionado")
                }
                .fontWeight(.bold)
                .foregroundColor(selectorSession ? .white : .gray)
                Spacer()
                Button("REGÍSTRATE") {
                    self.selectorSession = false
                    print("registro boton presionado")
                    print(selectorSession)
                }
                .fontWeight(.bold)
                .foregroundColor(selectorSession ? .gray : .white)
                Spacer()
            }
            Spacer(minLength: 80)
            if selectorSession == true {
                InicioSesionView()
            } else {
                RegisterFormView()
            }
        }
    }
}
