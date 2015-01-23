//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Edward Clark on 1/22/15.
//  Copyright (c) 2015 Edward Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    var myBalloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        var firstBalloon = Balloon()
        firstBalloon.image = UIImage(named:"RedBalloon1.jpg")
        
        var secondBalloon = Balloon()
        firstBalloon.image = UIImage(named:"RedBalloon2.jpg")
        
        var thirdBalloon = Balloon()
        firstBalloon.image = UIImage(named:"RedBalloon3.jpg")
        
        var fourthBalloon = Balloon()
        firstBalloon.image = UIImage(named:"RedBalloon4.jpg")
        
        self.myBalloons += [firstBalloon,secondBalloon,thirdBalloon,fourthBalloon]
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        
        var randomIndex:Int
        do {
            randomIndex = Int(arc4random_uniform(UInt32(self.myBalloons.count)))
        } while self.currentIndex == randomIndex
        
        self.currentIndex == randomIndex
        
        let balloon = self.myBalloons[randomIndex]
        
        self.balloonLabel.text = "\(currentIndex)" + "balloon"
        self.myImageView.image = balloon.image
    }

}

