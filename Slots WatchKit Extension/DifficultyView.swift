//
//  DifficultyView.swift
//  Slots WatchKit Extension
//
//  Created by Dominic Iquina on 8/22/21.
//

import SwiftUI
struct DifficultyView: View {
    @EnvironmentObject var progress: UserProgress
    @State private var click = 2
    var body: some View {
        VStack() {
            Spacer()
            Text("Bet Amount").foregroundColor(Color.white).font(.system(size: 25))
            Text("per spin").font(.system(size: 8))
            HStack() {
                Spacer()
                Button(action: {
                    progress.lose = 25
                    progress.winBig = 250
                    progress.winSmall = 100
                    click = 1
                }, label: {
                Text("25")
            })
            .frame(width: 70.0, height: 40.0).foregroundColor(click == 1 ? Color.yellow : Color.white)
                Spacer()
                Button(action: {
                    progress.lose = 50
                    progress.winSmall = 200
                    progress.winBig = 500
                    click = 2
                }, label: {
                    Text("50")
                })
                .frame(width: 70.0, height: 40.0).foregroundColor(click == 2 ? Color.yellow : Color.white)
                Spacer()
            }
            Spacer()
            HStack() {
                Spacer()
            Button(action: {
                progress.lose = 100
                progress.winSmall = 400
                progress.winBig = 1000
                click = 3
            }, label: {
                Text("100")
            })
            .frame(width: 70.0, height: 40.0).foregroundColor(click == 3 ? Color.yellow : Color.white)
                Spacer()
                Button(action: {
                    progress.lose = 250
                    progress.winSmall = 1000
                    progress.winBig = 2500
                    click = 4
                }, label: {
                    Text("250")
                }).frame(width: 70.0, height: 40.0).foregroundColor(click == 4 ? Color.yellow : Color.white)
                Spacer()
            }
            Text("Credits \(progress.credits)").foregroundColor(Color.yellow)
            Spacer()
        }
    }
}

struct DifficultyView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyView()
    }
}
