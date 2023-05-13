//
//  chat_View.swift
//  ai_reation_chat
//
//  Created by kaito on 2023/05/13.
//

import SwiftUI

struct chat_View: View {
    //画面を閉じるために使う
    @Environment(\.dismiss) var dismiss
    
    //入力した情報
    @State private var Waiting_for_conversation_reply: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.cyan
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Button(action: {
                            dismiss()
                        }) {
                            HStack{
                                Image(systemName: "delete.left.fill")
                                Text("閉じる")
                            }
                        }.buttonStyle(BlueButtonStyle())
                        Spacer()
                    }
                    Spacer()
                    ZStack{
                        Color.white
                            .ignoresSafeArea()
                        HStack{
                            TextField("Aa", text: $Waiting_for_conversation_reply)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                            Button(action: {
                                
                            }){
                                Image(systemName: "paperplane.fill").font(.largeTitle)
                            }
                            Spacer()
                        }
                    }.frame(height: 50)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct chat_View_Previews: PreviewProvider {
    static var previews: some View {
        chat_View()
    }
}
