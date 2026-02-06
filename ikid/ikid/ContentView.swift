//
//  ContentView.swift
//  ikid
//
//  Created by Arkita Jain on 2/5/26.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            JokePage(
                question: "What do you call a swimming terrorist?",
                punchline: "A bath bomb"
            )
            .tabItem {
                Text("Good")
            }

            JokePage(
                question: "There was a roman emperor who never aged after he turned 19.",
                punchline: "His name was Constant Teen."
            )
            .tabItem {
                Text("Pun")
            }

            JokePage(
                question: "A termite walks into a bar and asks...",
                punchline: "Is the bar tender here?"
            )
            .tabItem {
                Text("Dad")
            }
        }
    }
}

struct JokePage: View {
    let question: String
    let punchline: String

    @State private var showPunchline = false

    var body: some View {
        ZStack {
            Group {
                   if showPunchline {
                       Text(punchline)
                   } else {
                       Text(question)
                   }
               }
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("Next") {
                        showPunchline.toggle()
                    }
                    .padding()
                }
            }
        }
    }
}
