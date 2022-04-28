//
//  HistoryViewHelper.swift
//  Nano1Project
//
//  Created by Ismawan Maulidza on 4/28/22.
//

import Foundation

import SwiftUI

struct History : Identifiable{
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let duration: String
}

struct VideoList {
    static let HistoryToDo = [
        History(imageName: "DONE", title: "Belajar Swift UI", description: "mempelajari inheritence, membuat app kalkulator, membaca HIG", duration: "60Min"),
        
        History(imageName: "DONE", title: "Membersihkan rumah", description: "Nyapu, ngepel, cuci piring", duration: "60Min")
    ]
}
