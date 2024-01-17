//
//  InitSessionView.swift
//  GameStream
//
//  Created by mario saldaña martinez on 31/10/23.
//

import SwiftUI





struct InicioSesionView: View {
    @State var email = ""
    @State var password = ""
    @State var color = true
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Section {
                    Text("Correo Electrónico")
                        .foregroundStyle(Color("dark-cian"))
                        .fontWeight(.bold)
                        
                    ZStack(alignment: .leading) {
                        if email.isEmpty {
                            Text("Correo Electrónico").foregroundStyle(Color("light-gray")).font(.caption)
                        }
                        TextField("", text: $email)
                    }
                    Divider().frame(height: 1).background(Color("dark-cian"))
                    Spacer(minLength: 40)
                    
                }.padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))

                
                
                // password
                Section {
                    Text("Contraseña")
                        .foregroundStyle(Color("dark-cian"))
                        .fontWeight(.bold)
                    ZStack(alignment: .leading) {
                        if password.isEmpty {
                            Text("Contraseña").foregroundStyle(Color("light-gray")).font(.caption)
                        }
                        SecureField("", text: $password)
                    }
                    Divider().frame(height: 1).background(Color("dark-cian"))
                    Button("¿Olvidaste tu contraseña?"){
                        print("boton restablecer contraseña")
                    }
                    .font(.caption)
                    .foregroundStyle(Color("dark-cian"))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 70, trailing: 0))
                    
                }.padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
                
                
                NavigationLink {
                    SelectorScreenView()
                } label: {
                    Text("INICIAR SESIÓN")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(.white))
                        .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color("dark-cian"), lineWidth: 2).shadow(color: Color("dark-cian"), radius: 5))
                }.padding(EdgeInsets(top: 0, leading: 18, bottom: 110, trailing: 18))

               
                Text("Inicia sesión con redes sociales")
                    .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color(.white))
                    .fontWeight(.bold)
                HStack (alignment: .center){
                    Button {
                        inicioFacebook()
                    } label: {
                        Text("Facebook")
                            .foregroundStyle(Color(.white))
                            .padding(EdgeInsets(top: 6, leading: 18, bottom: 6, trailing: 18))
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color(.clear), lineWidth: 2))
                            
                    }.buttonStyle(.bordered).tint(Color("blue-gray"))
                    
                    Button {
                        inicioX()
                    } label: {
                        Text("X")
                            .foregroundStyle(Color(.white))
                            .padding(EdgeInsets(top: 6, leading: 48, bottom: 6, trailing: 48))
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color(.clear), lineWidth: 2))
                    }.buttonStyle(.bordered).tint(Color("blue-gray"))
                }.frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
            }
            
        }
    }
}

func inicioFacebook(){
    
}
func inicioX(){
    
}

