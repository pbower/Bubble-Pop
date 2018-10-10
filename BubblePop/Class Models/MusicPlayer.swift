//
//  MusicPlayer.swift
//  BubblePop
//
//  Created by Peter Bower on 2/5/18.
//  Copyright © 2018 Peter Bower. All rights reserved.
//
//  BubblePop soundtrack composed by Peter Bower © 2018
//

import AVFoundation

class MusicPlayer {                             //this class manages the in-game music player
    
    static let sharedPlayer = MusicPlayer()
    
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "BubblePopOriginalMusic", ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = -1     //play on an infinite loop
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play background music file")
        }
    }
    
    func stopBackgroundMusic() {                //these methods are accessed via in-game options
        audioPlayer!.stop()
    }
    
    func restartBackgroundMusic() {
        audioPlayer!.play()
    }
    
}
