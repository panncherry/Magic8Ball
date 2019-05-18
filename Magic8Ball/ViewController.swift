//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Pann Cherry on 5/17/19.
//  Copyright © 2019 Pann Cherry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var maigcBallImage: UIImageView!
    
    var randomBallNumber: Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func askButtonPressed(_ sender: Any) {
        uploadRandomBallImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        uploadRandomBallImage()
    }
    
    
    func uploadRandomBallImage() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        maigcBallImage.image = UIImage(named: ballArray[randomBallNumber])
    }
}

