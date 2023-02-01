//
//  MakeView.swift
//  Slots WatchKit Extension
//
//  Created by Dominic Iquina on 8/22/21.
//

import SwiftUI
class UserProgress: ObservableObject {
    @Published var credits = 1000
    @Published var winSmall = 100
    @Published var winBig = 250
    @Published var lose = 50
    
}

struct MakeView: View {
    @StateObject var progress = UserProgress()
    @State private var selectedTab = 1
    var body: some View {
        TabView(selection: $selectedTab) {
            DifficultyView().environmentObject(progress).tag(3)
            ContentView().environmentObject(progress).tag(1)
            StoreView().environmentObject(progress).tag(2)
    }
}

struct MakeView_Previews: PreviewProvider {
    static var previews: some View {
        MakeView()
    }
}
}
