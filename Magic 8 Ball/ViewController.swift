//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Prateek Jadhwani on 9/18/17.
//  Copyright © 2017 Prateek Jadhwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBall: UIImageView!
    
    var answerType : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getRandomAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        getRandomAnswer()
    }
    
    func getRandomAnswer() {
        answerType = Int(arc4random_uniform(5))
        magicBall.image = UIImage(named: "ball\(answerType + 1)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRandomAnswer()
    }
}

