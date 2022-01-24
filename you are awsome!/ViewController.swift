//
//  ViewController.swift
//  you are awsome!
//
//  Created by Carol Yu on 1/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍🏼 viewdDidLoad has run!")
        messageLabel.text="fabulous? thats you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("🌚 the message button was pressed")
        messageLabel.text="you are awsome!"
    }
    
}

