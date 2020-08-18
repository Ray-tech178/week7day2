//
//  ViewController.swift
//  Raymond_L_Audio_App
//
//  Created by Raymond Lo on 8/18/20.
//  Copyright © 2020 Raymond. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
	var audioPlayer = AVAudioPlayer()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		let sound =  Bundle.main.path(forResource: "Abyss Watchers", ofType: "mp3")
		
		do{
			audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
		}catch{
			print("Error")
		}
	}
	
	
	@IBAction func pauseButton(_ sender: Any) {
		audioPlayer.pause()
	}
	
	@IBAction func playButton(_ sender: Any) {
		audioPlayer.play()
	}
	
	@IBAction func stopButton(_ sender: Any) {
		audioPlayer.stop()
	}
}

