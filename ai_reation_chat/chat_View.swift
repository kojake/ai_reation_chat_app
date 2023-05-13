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
    //返信回数
    @State var number_of_replies = 0
    //返信内容
    @State var Reply_content = ["","","","",""]
    @State var respons_content = ["","","","",""]
    //本人返信表示ポジション
    var Personal_reply_display_position1 = CGPoint(x: CGFloat(280), y: CGFloat(30))
    var Personal_reply_display_position2 = CGPoint(x: CGFloat(280), y: CGFloat(80))
    var Personal_reply_display_position3 = CGPoint(x: CGFloat(280), y: CGFloat(140))
    var Personal_reply_display_position4 = CGPoint(x: CGFloat(280), y: CGFloat(200))
    var Personal_reply_display_position5 = CGPoint(x: CGFloat(280), y: CGFloat(250))
    //アルゴリズム返信表示ポジション
    var Reply_display_position1 = CGPoint(x: CGFloat(105), y: CGFloat(-240))
    var Reply_display_position2 = CGPoint(x: CGFloat(105), y: CGFloat(-190))
    var Reply_display_position3 = CGPoint(x: CGFloat(105), y: CGFloat(-130))
    var Reply_display_position4 = CGPoint(x: CGFloat(105), y: CGFloat(-70))
    var Reply_display_position5 = CGPoint(x: CGFloat(105), y: CGFloat(-30))
    
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
                    //メッセージ内容
                    HStack{
                        //自分の返信
                        Spacer()
                        VStack {
                            if number_of_replies >= 1 {
                                ZStack(alignment: .center) {
                                    RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                        .fill(Color.green)
                                        .frame(width: 200, height: 50)
                                    Text(Reply_content[0])
                                        .font(.title3)
                                        .fontWeight(.black)
                                }
                                .position(Personal_reply_display_position1)
                            }
                            Spacer()
                            if number_of_replies >= 2 {
                                ZStack(alignment: .center) {
                                    RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                        .fill(Color.green)
                                        .frame(width: 200, height: 50)
                                    Text(Reply_content[1])
                                        .font(.title3)
                                        .fontWeight(.black)
                                }
                                .position(Personal_reply_display_position2)
                            }
                            Spacer()
                            if number_of_replies >= 3 {
                                ZStack(alignment: .center) {
                                    RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                        .fill(Color.green)
                                        .frame(width: 200, height: 50)
                                    Text(Reply_content[2])
                                        .font(.title3)
                                        .fontWeight(.black)
                                }
                                .position(Personal_reply_display_position3)
                            }
                            Spacer()
                            if number_of_replies >= 4 {
                                ZStack(alignment: .center) {
                                    RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                        .fill(Color.green)
                                        .frame(width: 200, height: 50)
                                    Text(Reply_content[3])
                                        .font(.title3)
                                        .fontWeight(.black)
                                }
                                .position(Personal_reply_display_position4)
                            }
                            Spacer()
                            if number_of_replies >= 5 {
                                ZStack(alignment: .center) {
                                    RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                        .fill(Color.green)
                                        .frame(width: 200, height: 50)
                                    Text(Reply_content[4])
                                        .font(.title3)
                                        .fontWeight(.black)
                                }
                                .position(Personal_reply_display_position5)
                            }
                            Spacer()
                        }
                    }
                    //アルゴリズムの返信
                    VStack{
                        if number_of_replies >= 1 {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                    .fill(Color.white)
                                    .frame(width: 200, height: 50)
                                Text(Reply_content[0])
                                    .font(.title3)
                                    .fontWeight(.black)
                            }
                            .position(Reply_display_position1)
                        }
                        Spacer()
                        if number_of_replies >= 2 {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                    .fill(Color.white)
                                    .frame(width: 200, height: 50)
                                Text(Reply_content[0])
                                    .font(.title3)
                                    .fontWeight(.black)
                            }
                            .position(Reply_display_position2)
                        }
                        Spacer()
                        if number_of_replies >= 3 {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                    .fill(Color.white)
                                    .frame(width: 200, height: 50)
                                Text(Reply_content[0])
                                    .font(.title3)
                                    .fontWeight(.black)
                            }
                            .position(Reply_display_position3)
                        }
                        Spacer()
                        if number_of_replies >= 4 {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                    .fill(Color.white)
                                    .frame(width: 200, height: 50)
                                Text(Reply_content[0])
                                    .font(.title3)
                                    .fontWeight(.black)
                            }
                            .position(Reply_display_position4)
                        }
                        Spacer()
                        if number_of_replies == 5 {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                                    .fill(Color.white)
                                    .frame(width: 200, height: 50)
                                Text(Reply_content[0])
                                    .font(.title3)
                                    .fontWeight(.black)
                            }
                            .position(Reply_display_position5)
                        }
                    }
                    ZStack{
                        Color.white
                            .ignoresSafeArea()
                        HStack{
                            TextField("Aa", text: $Waiting_for_conversation_reply)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                            Button(action: {
                                if number_of_replies == 0{
                                    Reply_content[0] = Waiting_for_conversation_reply
                                    number_of_replies = 1
                                    print(number_of_replies)
                                }
                                else if number_of_replies == 1{
                                    Reply_content[1] = Waiting_for_conversation_reply
                                    number_of_replies = 2
                                    print(number_of_replies)
                                }
                                else if number_of_replies == 2{
                                    Reply_content[2] = Waiting_for_conversation_reply
                                    number_of_replies = 3
                                    print(number_of_replies)
                                }
                                else if number_of_replies == 3{
                                    Reply_content[3] = Waiting_for_conversation_reply
                                    number_of_replies = 4
                                    print(number_of_replies)
                                }
                                else if number_of_replies == 4{
                                    Reply_content[4] = Waiting_for_conversation_reply
                                    number_of_replies = 5
                                    print(number_of_replies)
                                }
                                else if number_of_replies == 5{
                                    Reply_content[1] = Waiting_for_conversation_reply
                                    number_of_replies = 1
                                    print(number_of_replies)
                                }
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
