//
//  ContentView.swift
//  Slots WatchKit Extension
//
//  Created by Dominic Iquina on 8/16/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var progress: UserProgress
    @State private var slot1 = "apple3"
    @State private var slot2 = "apple3"
    @State private var slot3 = "apple3"
    
    
    var body: some View {
        VStack{
            Spacer()
            Text("Slots!").font(.custom("Georgia", size: 40))
            Spacer()
            Text("Credits \(progress.credits)").foregroundColor(Color.yellow).font(.system(size: 12))
            Spacer()
        HStack(spacing:-8){
            Image(slot1)
                .resizable()
                .frame(width:60, height: 60)
                .aspectRatio(contentMode: .fit)
            Image(slot2)
                .resizable()
                .frame(width:60, height: 60)
                .aspectRatio(contentMode: .fit)
        Image(slot3)
            .resizable()
            .frame(width:60, height: 60)
            .aspectRatio(contentMode: .fit)
        }
            Spacer()
            Button(action: {
                //Code for the randomizer
                if progress.credits >= progress.lose {
                let r1 = Int.random(in: 1...3)
                let r2 = Int.random(in: 1...3)
                let r3 = Int.random(in: 1...3)
                
                slot1 = "apple" + String(r1)
                slot2 = "apple" + String(r2)
                slot3 = "apple" + String(r3)
                
                
                if(r1 == 3) && (r2 == 3) && (r3 == 3) {
                    progress.credits += progress.winBig
                } else if (r1 == r2) && (r2==r3){
                    progress.credits += progress.winSmall
                } else {
                    progress.credits -= progress.lose
                }
                } else {
                    return()
                }
                
                
            }, label: {
                Text("Spin em")
                    .foregroundColor(.orange)
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
