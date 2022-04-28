//
//  TimerManager.swift
//  Nano1Project
//
//  Created by Ismawan Maulidza on 4/28/22.
//

import Foundation
import SwiftUI

class TimerManager: ObservableObject{
    
    @Published var timerMode: TimerMode = .initial
    
    @Published var secondsLeft = UserDefaults.standard.integer(forKey: "timerLength")
    
    var timer = Timer()
    
    func setTimerlength(minutes: Int){
        let defaults = UserDefaults.standard
        defaults.set(minutes, forKey: "timerLength")
        secondsLeft = minutes
    }
    
    func start(){
        timerMode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            if self.secondsLeft == 0{
//                self.timerMode = .initial
//                self.secondsLeft = 60
//                timer.invalidate()
                self.reset()
            }
            self.secondsLeft -= 1
        })
    }
    
    func reset(){
        self.timerMode = .initial
        self.secondsLeft = UserDefaults.standard.integer(forKey: "timerlength")
        timer.invalidate()
    }
    
    func pause(){
        self.timerMode = .paused
        timer.invalidate()
    }
}
