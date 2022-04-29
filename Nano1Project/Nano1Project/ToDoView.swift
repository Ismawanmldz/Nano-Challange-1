//
//  ToDoView.swift
//  Nano1Project
//
//  Created by Ismawan Maulidza on 4/28/22.
//

import SwiftUI

struct ToDoView: View {
    
    @State var textEditorText: String = "What do you want to do today?"
    @State var savedText: String = ""

    @Binding var selectedTab: Int

    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 400)
                
                Button(action: {
                    savedText = "your data has been save!"
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.red)
                        .cornerRadius(10)
                })
                Text(savedText)
                
                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("Lets Start".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.red)
                        .cornerRadius(10)
                })
                
            }
            .padding()
            .background(Color.gray)
            .navigationTitle("TO DO LIST")
        }
    }
}




//update
