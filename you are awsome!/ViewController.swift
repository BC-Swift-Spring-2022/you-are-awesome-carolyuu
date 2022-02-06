//
//  ViewController.swift
//  you are awsome!
//
//  Created by Carol Yu on 1/24/22...
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["you are awesome",
                        "you are great",
                        "you are fantastic",
                        "when the genious bar needs help, they call you",
                        "fabulous? thats you!",
                        "you've got the design skills of Jony Ive"]
        
//Repeat Loop, declaration w/o intialization
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in:0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        

        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
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
            }
        }
        
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

    
