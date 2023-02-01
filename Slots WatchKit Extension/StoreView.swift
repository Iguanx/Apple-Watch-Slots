//
//  StoreView.swift
//  Slots WatchKit Extension
//
//  Created by Dominic Iquina on 8/22/21.
//

import SwiftUI

struct StoreView: View {
    @EnvironmentObject var progress: UserProgress
    var body: some View {
        VStack() {
            Spacer()
            Spacer()
            Text("Store").font(.system(size: 25)).foregroundColor(Color.white)
            Text("Credits \(progress.credits)").foregroundColor(Color.yellow).font(.system(size: 8))
            Button(action: {
                progress.credits += 250
            }, label: {
                Text("250 Credits")
            }).frame(width: 135.0)
            Button(action: {
                progress.credits += 500
            }, label: {
                Text("500 Credits")
            })
            .frame(width: 135.0)
            Button(action: {
                progress.credits += 1000
            }, label: {
                Text("1000 Credits")
                    
            })
            .frame(width: 135.0)
            
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
