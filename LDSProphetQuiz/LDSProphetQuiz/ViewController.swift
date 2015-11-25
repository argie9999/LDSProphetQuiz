//
//  ViewController.swift
//  LDSProphetQuiz
//
//  Created by Caleb Robinson on 11/25/15.
//  Copyright © 2015 Caleb Robinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let questions: [String] = [
        "who is this prophet above",
        "how old was Thomas S. Monson when he became a bishop",
        "how many prophets have there been"
    ]
    
    var questionIndex: Int = 0
    
    
    @IBOutlet weak var goLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func handleGo(sender: AnyObject) {
        if questionIndex > questions.count - 1 {
            questionIndex = 0
        }
        
        goLabel.text = questions[questionIndex]
        questionIndex++
    }
}

