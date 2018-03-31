//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by David Davidov on 11/18/17.
//  Copyright © 2017 David Davidov. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let ballArray : Array = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var magicball: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateimages()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    @IBAction func askButtonPressed(_ sender: UIButton)
    {
        updateimages()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        updateimages()
    }
    func updateimages()
    {
        randomBallNumber = Int(arc4random_uniform(5))
        
        magicball.image = UIImage(named: ballArray[randomBallNumber])
        
    }
}

