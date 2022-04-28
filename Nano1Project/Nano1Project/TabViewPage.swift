//
//  TabViewPage.swift
//  Nano1Project
//
//  Created by Ismawan Maulidza on 4/28/22.
//

import SwiftUI



struct TabViewPage: View {
    @State var selectedTab: Int = 0
    var body: some View {
//        NavigationLink(destination: HistoryDetailView, label: {
//
//        })
        TabView (selection: $selectedTab){
            ToDoView(selectedTab: $selectedTab)
                .tabItem{
                    Image(systemName: "doc.plaintext.fill")
                    Text("To Do")
                }
                .tag(0)
            TimerView()
                .tabItem{
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .tag(1)
            HistoryView()
                .tabItem{
                    Image(systemName: "clock.badge.checkmark")
                    Text("History")
                }
                .tag(2)
            
        }
        .accentColor(.red)
    }
}
//===============================================
struct TabViewPage_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPage()
    }
}
//===============================================



