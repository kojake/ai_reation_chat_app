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
    //アルゴリズム内容
    @State var Conversation_list = ["a":"b","b":"c","c":"d"]
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
    //アルゴリズム追加アラート
    @State private var Algorithmic_add = false
    @State var Algorithmic_textfiled: String = ""
    
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
                                Text(respons_content[0])
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
                                Text(respons_content[1])
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
                                Text(respons_content[2])
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
                                Text(respons_content[3])
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
                                Text(respons_content[4])
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
                                Algorithmic_search()
                            }){
                                Image(systemName: "paperplane.fill").font(.largeTitle)
                            }
                            Spacer()
                        }
                    }.frame(height: 50)
                }
            }
        }.navigationBarBackButtonHidden(true)
        //アルゴリズム追加アラート
        .alert(isPresented: $Algorithmic_add) {
             Alert(title: Text("追加"),
                   message: Text("アルゴリズムAIはこの言葉になんて返事をすればいいか理解していないようです。なんて返事をすればいいか学習させましょう！"),
                   textField: Algorithmic_textfiled(configurationHandler: nil),
                   dismissButton: .default(Text("決定"),
                                           action: {}))
         }
    }
    
    //アルゴリズム一致検索関数
    func Algorithmic_search(){
        if let value = Conversation_list[Waiting_for_conversation_reply] {
            if number_of_replies == 0{
                respons_content[0] = value
                Reply_content[0] = Waiting_for_conversation_reply
                number_of_replies = 1
            }
            else if number_of_replies == 1{
                respons_content[1] = value
                Reply_content[1] = Waiting_for_conversation_reply
                number_of_replies = 2
            }
            else if number_of_replies == 2{
                respons_content[2] = value
                Reply_content[2] = Waiting_for_conversation_reply
                number_of_replies = 3
            }
            else if number_of_replies == 3{
                respons_content[3] = value
                Reply_content[3] = Waiting_for_conversation_reply
                number_of_replies = 4
            }
            else if number_of_replies == 4{
                respons_content[4] = value
                Reply_content[4] = Waiting_for_conversation_reply
                number_of_replies = 5
            }
            else if number_of_replies == 5{
                respons_content[5] = value
                Reply_content[5] = Waiting_for_conversation_reply
                number_of_replies = 1
            }
        } else {
            print("該当するキーはありません")
        }
    }
}

struct chat_View_Previews: PreviewProvider {
    static var previews: some View {
        chat_View()
    }
}
