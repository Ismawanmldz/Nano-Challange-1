//
//  TimerView.swift
//  Nano1Project
//
//  Created by Ismawan Maulidza on 4/28/22.
//

import SwiftUI

//Timer
struct TimerView: View {
    
    @ObservedObject var timerManager = TimerManager()
    
//    @State var timerMode: TimerMode = .initial
    
    @State var selectedPickerIndex = 0
    
    let availableMinutes = Array(1...30)
    var body: some View {
        
        NavigationView {
        VStack {
            Text(secondsToMinutesAndSeconds(seconds: timerManager.secondsLeft))
                .font(.system(size:80))
                .padding(.top,80)
            Image(systemName: timerManager.timerMode == .running ? "pause.circle.fill" : "play.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                .foregroundColor(.red)
                .onTapGesture(perform: {
                    if self.timerManager.timerMode == .initial{
                        self.timerManager.setTimerlength(minutes: self.availableMinutes[self.selectedPickerIndex]*60)
                    }
                    self.timerManager.timerMode == .running ? self.timerManager.pause() : self.timerManager.start()
                })
            
            if timerManager.timerMode == .paused{
                Image(systemName: "gobackwords")
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.top, 40)
                .onTapGesture(perform: {
                        self.timerManager.reset()
                    })
            }
            if timerManager.timerMode == .initial{
                Picker(selection: $selectedPickerIndex, label: Text("")){
                    ForEach(availableMinutes,id:\.self){ min in
                        Text("\(min) min")
                    }
                }
                }
            Spacer()
            }
            .navigationBarTitle("TIMER")
        }
//        .environment(\.colorScheme, .dark)
    }
}

//===============================================

