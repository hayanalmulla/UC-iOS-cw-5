//
//  ContentView.swift
//  CW5 part1
//
//  Created by macbook on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emoji = ["😄", "🥹", "🤣", "🥰", "😒", "😡", "😭", "❤️", "🤪", "🫣", "😇", "😔", "🤐", "😴", "💛"]
    @State var tap = ""
    var body: some View {
        VStack{ Text("Choose the Emoji that expresses your mood today")
            .padding()
            .foregroundColor(.purple)
            .font(.title3)
            Text(tap)
            ScrollView(.horizontal) {
                HStack{
                ForEach(emoji, id: \.self){ emoji in
                Text(emoji)
                        .background(.purple)
                        .onTapGesture {
                        tap = emoji
         
                    }
            }
                }
            }
            
            
            
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
