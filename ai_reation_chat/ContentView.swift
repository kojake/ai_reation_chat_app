//
//  ContentView.swift
//  ai_reation_chat
//
//  Created by kaito on 2023/05/13.
//

import SwiftUI

struct ContentView: View {
    //画面遷移
    @State private var showShould_chat_View = false

    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: chat_View(), isActive: $showShould_chat_View) {
                   EmptyView()
               }.navigationBarBackButtonHidden(true)
                HStack{
                    Text("アルゴリズム作成AIチャット").font(.largeTitle).fontWeight(.black)
                }
                
                Button(action: {
                    showShould_chat_View = true
                }) {
                    HStack{
                        Image(systemName: "ellipsis.message.fill")
                        Text("会話を始める")
                    }
                }.buttonStyle(BlueButtonStyle())
                Button(action: {
                    
                }) {
                    HStack{
                        Image(systemName: "minus.circle.fill")
                        Text("アルゴリズム削除")
                    }
                }.buttonStyle(BlueButtonStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//button design
struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 28, weight:.bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(5)
            .background(Color.blue.opacity(0.8))
            .cornerRadius(20)
            .shadow(color:.black, radius: 4)
            .opacity(configuration.isPressed ? 0.6 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}
