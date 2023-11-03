//
//  RegisterFormView.swift
//  GameStream
//
//  Created by mario saldaña martinez on 01/11/23.
//

import SwiftUI

struct RegisterFormView: View {
    @State var email = ""
    @State var password = ""
    @State var color = true
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Section{
                    Text("Elije una foto de perfil").foregroundStyle(Color(.white)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("puedes cambiarla o elegirla mas tarde").font(.caption).foregroundStyle(Color(.gray))
                    
                    Button {
                        changeProfilePhoto()
                    } label: {
                        ZStack{
                            Image("profilePhoto")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                            Image("cameraIcon")
                            Circle()
                                .stroke(.white, lineWidth: 2)
                                .fill(.clear)
                                .frame(width: 10, height: 10)
                        }
                    }

                    
                    
                }
                Spacer(minLength: 20)
                
                VStack(alignment: .leading) {
                    Section {
                        Text("Correo Electrónico *")
                            .foregroundStyle(Color("dark-cian"))
                            .fontWeight(.bold)
                            
                        ZStack(alignment: .leading) {
                            if email.isEmpty {
                                let arroba = "@"
                                Text("ejemplo\(arroba)gmail.com").foregroundStyle(Color("light-gray")).font(.caption)
                            }
                            TextField("", text: $email)
                        }
                        Divider().frame(height: 1).background(Color("dark-cian"))
                        Spacer(minLength: 40)
                        
                    }.padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))

                    
                    
                    // password
                    Section {
                        Text("Contraseña *")
                            .foregroundStyle(Color("dark-cian"))
                            .fontWeight(.bold)
                        ZStack(alignment: .leading) {
                            if password.isEmpty {
                                Text("******").foregroundStyle(Color("light-gray")).font(.caption)
                            }
                            SecureField("", text: $password)
                        }
                        Divider().frame(height: 1).background(Color("dark-cian"))
                        Spacer(minLength: 40)
                    }.padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
                    
                    //confirm password
                    Section {
                        Text("Confirmar Contraseña *")
                            .foregroundStyle(Color("dark-cian"))
                            .fontWeight(.bold)
                        ZStack(alignment: .leading) {
                            if password.isEmpty {
                                Text("******").foregroundStyle(Color("light-gray")).font(.caption)
                            }
                            SecureField("", text: $password)
                        }
                        Divider().frame(height: 1).background(Color("dark-cian"))
                        Spacer(minLength: 40)
                    }.padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
                    
                    Button {
                        //iniciarSesion()
                    } label: {
                        Text("REGÍSTRATE")
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.white))
                            .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color("dark-cian"), lineWidth: 2).shadow(color: Color("dark-cian"), radius: 5))
                    }.padding(EdgeInsets(top: 0, leading: 18, bottom: 50, trailing: 18))
                    Text("Regístrate con redes sociales")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                }
                
            }
        }
    }
}

func changeProfilePhoto(){
    
}
