//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Garima Bothra on 21/07/19.
//  Copyright © 2019 Garima Bothra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray=["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBall:Int = 0
    
    @IBOutlet weak var askLabel: UILabel!
    @IBOutlet weak var viewImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImages()
        // Do any additional setup after loading the view.
    }


    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImages()
        
    }
    func updateBallImages()
    {
        
        randomBall = Int.random(in: 0...4)

        viewImage.image = UIImage(named:ballArray[randomBall])
    }
}

