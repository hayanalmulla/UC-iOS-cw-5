//
//  ContentView.swift
//  cw5
//
//  Created by macbook on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    var weight: Double
    var height: Double
    init (height:Double,weight:Double){
        self.height=height
        self.weight=weight }
    @State var scale = ""
    }
    var body: some View {
        VStack{
            Image("bodyscale")
                .resizable()
                .scaledToFit()
                .padding()
            Text("Enter your height and weight")
                .bold()
                .foregroundColor(.purple)
                .font(.title3)
            TextField("Enter your height", text: $scale)
            TextField("Enter your weight", text: $scale)
            Text("Calculate")
                .foregroundColor(.white)
                .font(.system(size: 15))
                .frame(width: 90, height: 40)
                .background(Color.yellow)
                .clipShape(Capsule())
            
                .onTapGesture{
                    Text("Calculate")
                func bmi()->Double{
                return weight/(height*height)
                if
                    }
                }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
