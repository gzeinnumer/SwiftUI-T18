//
//  ContentView.swift
//  SwiftUI T18
//
//  Created by M Fadli Zein on 13/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var show = false;
    var body: some View {
        ZStack{
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
            if(show){
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.pink)
                    .padding()
                    .transition(.scale(scale: 0.1, anchor: .bottomTrailing))
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()){
                show.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
