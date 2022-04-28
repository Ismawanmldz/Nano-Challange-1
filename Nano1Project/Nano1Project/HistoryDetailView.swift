//
//  HistoryDetailView.swift
//  Nano1Project
//
//  Created by Ismawan Maulidza on 4/28/22.
//

import SwiftUI


struct HistoryDetailView: View {
    @Binding var selectedTab: Int
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            
            Image("DONE")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(10)
            
            Text("Belajar swiftUI")
                .font(.system(size: 30, weight: .semibold))
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            
            Text("60 Min")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.secondary)
            
            Text("Hari ini mencoba belajar coding di xcode menggunakan swiftUI, pelajari juga tenteng inheritance, child, dan explore HIG")
                .font(.body)
                .lineLimit(5)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button(action: {
                selectedTab = 1
            }, label: {
                Text("Do It Again")
                    .padding()
                    .padding(.horizontal)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: .semibold))
                    .background(Color.red)
                    .cornerRadius(10)
            })
        }
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView()
    }
}
