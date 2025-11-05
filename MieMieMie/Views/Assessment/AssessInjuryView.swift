//
//  AssessInjuryView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-05.
//

import SwiftUI
import Foundation

struct AssessInjuryView: View {
    let Messages = [
        MessageModel(user: "bot", profileImage: "chatgpt", message: "What can I help you?"),
        MessageModel(user: "janja", profileImage: "janja", message: "I've developed a severe backache"),
        MessageModel(user: "bot", profileImage: "chatgpt", message: "What's the exact position of the painpoint? Do you remember after what you discovered it?"),
        MessageModel(user: "janja", profileImage: "janja", message: "I think it was after doing pul-ups last night, and I have this pain next to my shoulder blade"),
        MessageModel(user: "bot", profileImage: "chatgpt", message: "Please follow this video to do the test."),
        MessageModel(user: "bot", profileImage: "chatgpt", message: "Do you feel your activity is limited?"),
        MessageModel(user: "janja", profileImage: "janja", message: "Yes, and it really hurt"),
        MessageModel(user: "bot", profileImage: "chatgpt", message: "It should be the subscapularis pull up, I will customize a rehabilitation plan for you. ")
    ]
    var body: some View {
        VStack(spacing:0) {
            ScrollView {
                VStack {
                    BotMessageView(message: Messages[0])
                    UserMessageView(message:Messages[1])
                    BotMessageView(message: Messages[2])
                    UserMessageView(message: Messages[3])
                    BotMessageView(message: Messages[4])
                    BotMessageView(message: Messages[5])
                    UserMessageView(message: Messages[6])
                    BotMessageView(message: Messages[7])
                }
            }
            .padding()
            TypeMessageView()
                .overlay{
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: .clear, location: 0),
                            Gradient.Stop(color: Color("gradient"), location:0.8)
                        ],
                        startPoint:.top,
                        endPoint:.bottom
                    )
        }
    }
}


struct BotMessageView: View {
    var message: MessageModel
    var body: some View {
        HStack(alignment:.bottom, spacing: 15) {
            Image(message.profileImage)
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            ContentMessageView(contentMessage: message.message,
                               isCurrentUser: false)
            Spacer()
        }
        .padding(.bottom)
    }
}

struct UserMessageView: View {
    var message: MessageModel
    var body: some View {
        HStack(alignment:.bottom,
               spacing: 15) {
            Spacer()
            ContentMessageView(contentMessage: message.message, isCurrentUser: true)
            Image(message.profileImage)
                .resizable()
                .frame(width:40, height: 40, alignment:.center)
                .cornerRadius(20)
        }
        .padding(.bottom)
    }
}

struct ContentMessageView: View {
    var contentMessage: String
    var isCurrentUser: Bool
    var body: some View {
        Text(contentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color.white: Color.gray)
            .background(isCurrentUser ? Color("buttonColor"): Color(UIColor(red:240/255, green:240/255, blue: 240/255, alpha:10)))
            .cornerRadius(10)
    }
}

struct TypeMessageView: View {
    @State var text = ""
    var body: some View {
        HStack {
            Button(action: {
                //some action
            }) {
                Image(systemName: "face.smiling")
                    .font(.title)
                    .foregroundColor(.gray)
            }
            Spacer()
            VStack {
                TextField("    Enter Text", text: $text)
                    .frame(height:25)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    .padding(.horizontal, 20)
                    //.padding(.vertical, 12)
                    .onTapGesture {
                        //some action
                    }
            }
            //.padding()
            Spacer()
            Button(action: {
                //sendMessage action
            }) {
                Image(systemName: "mic.circle.fill")
                    .font(.title)
                    .foregroundColor(Color("buttonColor"))
            }
        }
        .padding(.horizontal)
        /*.padding(.horizontal)
        .padding(.vertical, 8)*/
        //add shading
        //.background(Color(.systemBackground))
        }
    }
}


#Preview {
    AssessInjuryView()
}
