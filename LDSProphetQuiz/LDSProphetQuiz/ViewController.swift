//
//  ViewController.swift
//  LDSProphetQuiz
//
//  Created by Caleb Robinson on 11/25/15.
//  Copyright © 2015 Caleb Robinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questionDict: [String: String] = [
        "Who is this prophet above?": "Thomas S. Monson",
        "How old was Thomas S. Monson when he became a bishop?": "22",
        "How many prophets have there been?": "16",
        "Who played baseball when he was a kid?": "Heber J. Grant",
        "Who looked at a kid and wiggeled his ears?": "Thomas S. Monson",
        "How old was Joseph Smith when he saw Heavenly Father and Jesus Christ?": "14",
        "Who had open heart surgery when he was a prophet?": "Spencer W. Kimball",
        "Who was the prophet when the proclamation to the world came out?": "Gordon B. Hinckley"
    ]
    
    var questionIndex: Int = 0
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionButton: UIButton!
    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerButton.hidden = true
        answerLabel.text = ""
        questionLabel.text = ""
    }
    
    @IBAction func handleShowQuestion(sender: AnyObject) {
        print("showing the question")
        if questionIndex > questionDict.count - 1 {
            questionIndex = 0
        }

        if let (question, _) = questionDict[questionIndex] {
            questionLabel.text = question
        }
        answerButton.hidden = false
        questionButton.hidden = true
        answerLabel.text = ""
    }
 
    @IBAction func handleShowAnswer(sender: AnyObject) {
        print("showing the answer")
        if let (_, answer) = questionDict[questionIndex] {
            answerLabel.text = answer
            questionIndex++
        }
        
        questionButton.hidden = false
        answerButton.hidden = true
    }
}


extension Dictionary {
    
    subscript(i: Int) -> (key: Key, value: Value)? {
        
        var index = 0
        
        for (key, value) in self {
            if i == index {
                return (key: key, value: value)
            }
            index++
        }
        
        return nil
    }
    
}