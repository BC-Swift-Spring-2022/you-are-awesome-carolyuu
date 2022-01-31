//
//  ViewController.swift
//  you are awsome!
//
//  Created by Carol Yu on 1/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 

        
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
       
        messageLabel.text="you are awsome!"
        messageLabel.textColor = UIColor.red
        imageView.image = UIImage(named: "image0")
    }
    
}

