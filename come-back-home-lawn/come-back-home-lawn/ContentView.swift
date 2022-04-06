//
//  ContentView.swift
//  come-back-home-lawn
//
//  Created by Jun.Mac on 2022/04/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var index = 0
    
    var body: some View{
        
        Login(index: self.$index)
                                       
    }
}



struct Login : View {
    
    @State var email = ""
    @State var pass = ""
    @Binding var index : Int
    
    var body: some View{
        
            VStack{
            Spacer()
               VStack(){
                        
                 Text("환영합니다! \n컴백홈에 로그인 해주세요")
                    .font(.custom("Apple SD 산돌고딕 Neo", size: 22))
                    .fontWeight(.bold) // 글꼴 굵기 조절 (.bold, .medium, .regular) 등등
                    .foregroundColor(Color(red: -0.291, green: 0.623, blue: 0.765))
                    .frame(width: 300, height: 200) // 텍스트뷰 자체 크기 조절
                    .multilineTextAlignment(.leading) // 정렬 (.leading, .center, .trailing)
                    .lineSpacing(6)// 줄간격
                    .padding()
                    .offset(x: -60, y: 180)
                                            
                    }
                Text("회원가입으로 가족과함께 \n사랑스러운 펭귄마을에 입주하세요")
                    .font(.custom("Apple SD 산돌고딕 Neo", size: 16))
                    .fontWeight(.bold) // 글꼴 굵기 조절 (.bold, .medium, .regular) 등등
                    .foregroundColor(Color.gray)
                    .frame(width: 300, height: 200) // 텍스트뷰 자체 크기 조절
                    .multilineTextAlignment(.leading) // 정렬 (.leading, .center, .trailing)
                    .lineSpacing(6)// 줄간격
                    .padding()
                    .offset(x: -60, y: 0)
                   
               VStack{
                    
                    ZStack(){
                        
                        Image("LoginChat")
                        .foregroundColor(Color("Color1"))
                        
                        TextField("아이디를 입력하세요", text: self.$email)
                            .font(.custom("Apple SD 산돌고딕 Neo", size: 16))
                            .foregroundColor(Color.gray)
                            .frame(width: 300, height: 200) // 텍스트뷰 자체 크기 조절
                            .multilineTextAlignment(.center) // 정렬 (.leading, .center, .trailing)
                    }
                  
                   ZStack(){
                       
                       Image("LoginChat")
                       .foregroundColor(Color("Color1"))
                       
                       TextField("아이디를 입력하세요", text: self.$email)
                           .font(.custom("Apple SD 산돌고딕 Neo", size: 16))
                           .foregroundColor(Color.gray)
                           .frame(width: 300, height: 200) // 텍스트뷰 자체 크기 조절
                           .multilineTextAlignment(.center) // 정렬 (.leading, .center, .trailing)
                   }
                    
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: "eye.slash.fill")
                        .foregroundColor(Color("Color1"))
                        
                        SecureField("Password", text: self.$pass)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                HStack{
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Forget Password?")
                            .foregroundColor(Color.black)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            // bottom padding...
            .padding(.bottom, 65)
            .background(Color("Color2"))
            .onTapGesture {
            
                self.index = 0
                    
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            // Button...
            
            Button(action: {
                
            }) {
                
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color("Color1"))
                    .clipShape(Capsule())
                    // shadow...
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            // moving view down..
            .offset(y: 25)
            .opacity(self.index == 0 ? 1 : 0)
        }
    }

