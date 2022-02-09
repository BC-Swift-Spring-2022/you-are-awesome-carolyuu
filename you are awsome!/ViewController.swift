//
//  ViewController.swift
//  you are awsome!
//
//  Created by Carol Yu on 1/24/22...
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 3
    var audioPlayer: AVAudioPlayer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    // helper function
    func playSound (name: String) {
        if let sound = NSDataAsset (name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                //                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("😡 ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        }else {
            print("😡 ERROR: Could not read file from sound0")
        }
        
    }
    
    func nonRepeatingRandom (origionalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in:0...upperLimit)
        } while origionalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["you are awesome",
                        "you are great",
                        "you are fantastic",
                        "when the genious bar needs help, they call you",
                        "fabulous? thats you!",
                        "you've got the design skills of Jony Ive"]
        
        messageNumber = nonRepeatingRandom(origionalNumber: messageNumber, upperLimit: messages.count-1)
        
        //Repeat Loop, declaration w/o intialization
        //        var newMessageNumber: Int
        //        repeat {
        //            newMessageNumber = Int.random(in:0...messages.count-1)
        //        } while messageNumber == newMessageNumber
        //        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        
        //        var newImageNumber: Int
        //        repeat {
        //            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        //        } while imageNumber == newImageNumber
        //        imageNumber = newImageNumber
        imageNumber = nonRepeatingRandom(origionalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
//        imageView.image = UIImage(named: "image0")
        
        
        
        //        var newSoundNumber: Int
        //        repeat {
        //            newSoundNumber = Int.random(in: 0...totalNumberOfSounds-1)
        //        } while soundNumber == newSoundNumber
        //        soundNumber = newSoundNumber
        //        print("*** the new sound number is \(soundNumber)")
        soundNumber = nonRepeatingRandom(origionalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        if playSoundSwitch.isOn { // if playSoundSwitch is on
            playSound(name: "sound\(soundNumber)") // then play the sound
        }
        
    }
    
    @IBAction func playSoundToggeled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil{ // if .isOn is NOT true
            audioPlayer.stop() // Stop playing
        }
    }
    
}

// WHILE LOOP
//        var newMessageNumber = Int.random(in:0...messages.count-1)
//        while messageNumber == newMessageNumber {
//            newMessageNumber = Int.random(in:0...messages.count-1)
//        }
//        messageNumber = newMessageNumber
//        messageLabel.text = messages[messageNumber]
//
//
//
//        var newImageNumber = Int.random(in: 0...totalNumberOfImages)
//        while imageNumber == newImageNumber {
//            newImageNumber = Int.random(in: 0...totalNumberOfImages)
//        }
//        imageNumber = newImageNumber
//        imageView.image = UIImage(named: "image\(imageNumber)")
//


// WHILE LOOP
//        var newMessage = messages[Int.random(in:0...messages.count-1)]
//
//        while messageLabel.text == newMessage {
//            newMessage = messages[Int.random(in:0...messages.count-1)]
//        }
//        messageLabel.text = newMessage
//
//
//
//        var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
//        while imageView.image == newImage {
//            newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
//        }
//        imageView.image = newImage
//
//            }
//        }

//        messageLabel.text = messages[Int.random(in:0...messages.count-1)]
//       imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")

// does not check for repetition

//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
// }


//print(imageNumber)
// let imageName = "image" + String (imageNumber)

//        let imageName = "image\(imageNumber)"
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
//        }
//

//        let awesomeMessage = "you are awsome!"
//        let greatMessage = "you are great!"
//        let bombMessage = "you are da bomb"
//
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage (named: "image1")
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }



