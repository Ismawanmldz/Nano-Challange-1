//
//  HistoryView.swift
//  Nano1Project
//
//  Created by Ismawan Maulidza on 4/28/22.
//

import SwiftUI

struct HistoryView: View {

    var body: some View {
        NavigationView{
            List(0 ..< 3){ item in
                Image("DONE")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .cornerRadius(4)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Belajar swiftUI")
                        .font(.system(size: 20, weight: .semibold))
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    
                    Text("60 Min")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Done")
        }
    }
}
